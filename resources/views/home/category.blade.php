@extends('welcome')

@section('latest')

    <div class="block category-listing">

        @foreach($news as $cat)
            <h3 class="block-title"><span>{{$cat->name}}</span></h3>
            <div class="row">
                <?php $data=  $cat->posts()->paginate(8); ?>
                @foreach($data as $n)
                <div class="col-md-6 ">
                    <div class="post-block-style post-grid clearfix">
                        <div class="post-thumb">
                            <a href="{{url('/v/'.$cat->id .'/'.$cat->slug.'/article/'.$n->id.'/'.$n->slug)}}">
                                <img class="img-responsive" src="{{asset('/images/'.$n->image)}}" alt="">
                            </a>
                        </div>
                        <div class="post-content">
                             <h2 class="post-title title-large">
                                 <a href="{{url('/v/'.$cat->id .'/'.$cat->slug.'/article/'.$n->id.'/'.$n->slug)}}">{{$n->title}}</a>
                             </h2>
                             <div class="post-meta">
                                 <span class="post-author"><a>{{$n->user_name}}</a></span>
                                 <span class="post-date">{{$n->updated_at->toFormattedDateString()}}</span>
                             </div>
                             <p>{!! str_limit($n->details,200) !!}</p>
                         </div>
                    </div>
                </div>
                @endforeach
            </div>
        @endforeach
    </div>

          <div class="text-center">{!! $data->links('layouts.pagination') !!}</div> 
@stop



