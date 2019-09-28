@extends('admin.layout-master')
@section('content')
<section class="wrapper scrollable">
    <nav class="user-menu">
        <a href="javascript:;" class="main-menu-access">
            <i class="icon-proton-logo"></i>
            <i class="icon-reorder"></i>
        </a>
    </nav>
    <div class="main-grid">
        <div class="agile-grids">
            <!-- input-forms -->
            <div class="grids">
                <div class="progressbar-heading grids-heading">
                    <h2>Input Forms</h2>
                </div>
                <div class="panel panel-widget forms-panel">
                    <div class="forms">
                        <div class="form-grids widget-shadow" data-example-id="basic-forms">
                            <div class="form-title">
                                <h4>Basic Form :</h4>
                            </div>
                            <div class="form-body">
                                <form action="#" method="post">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input type="email" name="email" class="form-control" id="exampleInputEmail1"
                                               placeholder="Email">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>
                                        <input type="password" name="password" class="form-control"
                                               id="exampleInputPassword1" placeholder="Password">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputFile">File input</label>
                                        <input type="file" id="exampleInputFile">
                                        <p class="help-block">Example block-level help text here.</p>
                                    </div>
                                    <div class="checkbox">
                                        <label> <input type="checkbox"> Check me out </label>
                                    </div>
                                    <button type="submit" class="btn btn-default w3ls-button">Submit</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="panel panel-widget forms-panel">
                    <div class="forms">
                        <div class=" form-grids form-grids-right">
                            <div class="widget-shadow " data-example-id="basic-forms">
                                <div class="form-title">
                                    <h4>Horizontal form :</h4>
                                </div>
                                <div class="form-body">
                                    <form class="form-horizontal" action="#" method="post">
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                                            <div class="col-sm-9">
                                                <input type="email" name="email" class="form-control" id="inputEmail3"
                                                       placeholder="Email">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                                            <div class="col-sm-9">
                                                <input type="password" name="password" class="form-control"
                                                       id="inputPassword3" placeholder="Password">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <div class="checkbox">
                                                    <label> <input type="checkbox"> Remember me </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-offset-2">
                                            <button type="submit" class="btn btn-default w3ls-button">Sign in</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="panel panel-widget forms-panel">
                    <div class="forms">
                        <div class="inline-form widget-shadow">
                            <div class="form-title">
                                <h4>Inline form Example 1 :</h4>
                            </div>
                            <div class="form-body">
                                <div data-example-id="simple-form-inline">
                                    <form class="form-inline" action="#" method="post">
                                        <div class="form-group"><input type="email" name="email" class="form-control"
                                                                       id="exampleInputEmail3" placeholder="Email">
                                        </div>
                                        <div class="form-group"><input type="password" name="password"
                                                                       class="form-control" id="exampleInputPassword3"
                                                                       placeholder="Password"></div>
                                        <div class="checkbox"><label> <input type="checkbox"> Remember me </label></div>
                                        <button type="submit" class="btn btn-default w3ls-button">Sign in</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                
                <div class="panel panel-widget forms-panel">
                    <div class="progressbar-heading general-heading">
                        <h4>General Form :</h4>
                    </div>
                    <div class="forms">
                        <h3 class="title1"></h3>
                        <div class="form-three widget-shadow">
                            <form class="form-horizontal" action="#" method="post">
                                <div class="form-group">
                                    <label for="focusedinput" class="col-sm-2 control-label">Focused Input</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control1" name="Default Input" id="focusedinput"
                                               placeholder="Default Input">
                                    </div>
                                    <div class="col-sm-2">
                                        <p class="help-block">Your help text!</p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="disabledinput" class="col-sm-2 control-label">Disabled Input</label>
                                    <div class="col-sm-8">
                                        <input disabled="" type="text" name="Disabled Input" class="form-control1"
                                               id="disabledinput" placeholder="Disabled Input">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword" class="col-sm-2 control-label">Password</label>
                                    <div class="col-sm-8">
                                        <input type="password" class="form-control1" id="inputPassword"
                                               placeholder="Password">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="checkbox" class="col-sm-2 control-label">Checkbox</label>
                                    <div class="col-sm-8">
                                        <div class="checkbox-inline1"><label><input type="checkbox"> Unchecked</label>
                                        </div>
                                        <div class="checkbox-inline1"><label><input type="checkbox" checked=""> Checked</label>
                                        </div>
                                        <div class="checkbox-inline1"><label><input type="checkbox" disabled="">
                                                Disabled Unchecked</label></div>
                                        <div class="checkbox-inline1"><label><input type="checkbox" disabled=""
                                                                                    checked=""> Disabled Checked</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="checkbox" class="col-sm-2 control-label">Checkbox Inline</label>
                                    <div class="col-sm-8">
                                        <div class="checkbox-inline"><label><input type="checkbox"> Unchecked</label>
                                        </div>
                                        <div class="checkbox-inline"><label><input type="checkbox" checked="">
                                                Checked</label></div>
                                        <div class="checkbox-inline"><label><input type="checkbox" disabled=""> Disabled
                                                Unchecked</label></div>
                                        <div class="checkbox-inline"><label><input type="checkbox" disabled=""
                                                                                   checked=""> Disabled Checked</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="selector1" class="col-sm-2 control-label">Dropdown Select</label>
                                    <div class="col-sm-8"><select name="selector1" id="selector1" class="form-control1">
                                            <option>Lorem ipsum dolor sit amet.</option>
                                            <option>Dolore, ab unde modi est!</option>
                                            <option>Illum, fuga minus sit eaque.</option>
                                            <option>Consequatur ducimus maiores voluptatum minima.</option>
                                        </select></div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Multiple Select</label>
                                    <div class="col-sm-8">
                                        <select multiple="" class="form-control1">
                                            <option>Option 1</option>
                                            <option>Option 2</option>
                                            <option>Option 3</option>
                                            <option>Option 4</option>
                                            <option>Option 5</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="txtarea1" class="col-sm-2 control-label">Textarea</label>
                                    <div class="col-sm-8"><textarea name="txtarea1" id="txtarea1" cols="50" rows="4"
                                                                    class="form-control1"></textarea></div>
                                </div>
                                <div class="form-group">
                                    <label for="radio" class="col-sm-2 control-label">Radio</label>
                                    <div class="col-sm-8">
                                        <div class="radio block"><label><input type="radio"> Unchecked</label></div>
                                        <div class="radio block"><label><input type="radio" checked=""> Checked</label>
                                        </div>
                                        <div class="radio block"><label><input type="radio" disabled=""> Disabled
                                                Unchecked</label></div>
                                        <div class="radio block"><label><input type="radio" disabled="" checked="">
                                                Disabled Checked</label></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="radio" class="col-sm-2 control-label">Radio Inline</label>
                                    <div class="col-sm-8">
                                        <div class="radio-inline"><label><input type="radio"> Unchecked</label></div>
                                        <div class="radio-inline"><label><input type="radio" checked=""> Checked</label>
                                        </div>
                                        <div class="radio-inline"><label><input type="radio" disabled=""> Disabled
                                                Unchecked</label></div>
                                        <div class="radio-inline"><label><input type="radio" disabled="" checked="">
                                                Disabled Checked</label></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="smallinput" class="col-sm-2 control-label label-input-sm">Small
                                        Input</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control1 input-sm" id="smallinput"
                                               placeholder="Small Input">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="mediuminput" class="col-sm-2 control-label">Medium Input</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control1" id="mediuminput"
                                               placeholder="Medium Input">
                                    </div>
                                </div>
                                <div class="form-group mb-n">
                                    <label for="largeinput" class="col-sm-2 control-label label-input-lg">Large
                                        Input</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control1 input-lg" id="largeinput"
                                               placeholder="Large Input">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <form method="post" action="">
                <textarea name="content">
                </textarea>
                <input type="file" name="">
                <br>
                <input type="submit" class="btn-primary btn" value="Send"  name="">
                </form>
            </div>
            <!-- //input-forms -->
        </div>
    </div>
    <!-- footer -->


    <!-- //footer -->
</section>
@endsection
