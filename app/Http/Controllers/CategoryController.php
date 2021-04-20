<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use Session;
use DB;
class CategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('role:admin');

    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
     
    public function index()
    {
        $menu = view('dashboard.menubar');

        $categories = Category::all();
        $content = view('dashboard.category.index', compact('categories'));
        return view('dashboard', compact('menu','content'));
    }


    public function addcat()
    {
        $menu = view('dashboard.menubar');
        $content = view('dashboard.category.add-category');
        return view('dashboard', compact('menu','content'));
    }

    public function ajax_position_check($position = null){ 

          $Category = DB::table('categories')->where('position', $position)->first();
          if ($Category) {
            echo "Alreay exists";
        }               
    }

    public function saveCat(Request $request)
    {

      $request->validate([
            'name' => 'required',
            'position' => 'required|unique:categories',
        ]);

          $data = new Category();
          $data->name = $request->name;
          $data->slug = str_slug($request->name);
          $data->position = $request->position;
          $data->save();

        alert()->success('Good Job', 'Successfully Added !!');
        return redirect()->back();
    }

    public function editcat(Request $request, $id)
    {

        $cat = Category::findOrFail($id);
        $menu = view('dashboard.menubar');

        $content = view('dashboard.category.edit-category', compact('cat'));
        return view('dashboard', compact('menu','content'));   
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $id = $request->id;
        $request->validate([
            'name' => 'required',
            'position' => 'required|unique:categories,position,'.$id,
        ]);

         $category = Category::find($id);
        $category->name = $request->name;
        $category->slug = str_slug($request->name);
        $category->position = $request->position;
        $category->status = $request->status;
        $category->update();

        alert()->success('Good Job', 'Successfully Updated !!');
        return redirect('category');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $category = Category::find($id);
        $category->delete();
        alert()->success('Good Job', 'Successfully Deleted !!');
        return back();
    }


    public function publish($id)
    {
        Category::where('id', $id)->update(['status' => 1]); 
        alert()->success('Good Job', 'Successfully Published !!');
          return back();
    }
    public function unpublish($id)
    {
        Category::where('id', $id)->update(['status' => 0]); 
        alert()->success('Good Job', 'Successfully Unpublished !!');
          return back();
    }

}
