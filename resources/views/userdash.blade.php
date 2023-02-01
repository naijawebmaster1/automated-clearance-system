<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight"> {{ __('Dashboard for user') }} </h2>
    </x-slot>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200"> You're logged in as a {{Auth::user()->name}} </div>
            </div>
        </div>
        <div>
            <div class="md:px-40 py-20">
                <!-- grid container -->
                <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-x-6 gap-y-10">
                    <!-- product card -->
                    <a href="#"
                        class="flex flex-col bg-white drop-shadow hover:drop-shadow-lg hover:opacity-70 rounded-md">
                        <!-- <img src=" #/wp-content/uploads/2022/07/kindacode-example.png"
                            alt="Fiction Product" class="h-36 object-cover rounded-tl-md rounded-tr-md"> -->
                        @if(Auth::user()->bursar =='')<div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-yellow-200 text-white font-bold">
                            Pending </div>@endif @if(Auth::user()->bursar =='approved')<div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-green-200 text-white font-bold">
                            {{Auth::user()->bursar}} </div>@endif @if(Auth::user()->bursar =='declined') <div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-pink-200 text-white font-bold">
                            {{Auth::user()->bursar}} </div>@endif <div class="px-3 py-2">
                            <h1 class="font-semibold">Bursar</h1>
                            <p class="text-sm">{{Auth::user()->bursar}}</p>
                        </div>
                    </a>
                    <!-- product card -->
                    <a href="#"
                        class="flex flex-col bg-white drop-shadow hover:drop-shadow-lg hover:opacity-70 rounded-md">
                        <!-- <img src=" #/wp-content/uploads/2022/07/kindacode-example.png"
                            alt="Fiction Product" class="h-36 object-cover rounded-tl-md rounded-tr-md"> -->
                        @if(Auth::user()->library =='')<div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-yellow-200 text-white font-bold">
                            Pending </div>@endif @if(Auth::user()->library =='approved')<div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-green-200 text-white font-bold">
                            {{Auth::user()->library}} </div>@endif @if(Auth::user()->library =='declined') <div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-pink-200 text-white font-bold">
                            {{Auth::user()->library}} </div>@endif <div class="px-3 py-2">
                            <h1 class="font-semibold">Library</h1>
                            <p class="text-sm">{{Auth::user()->library}}</p>
                        </div>
                    </a>
                    <!-- product card -->
                    <a href="#"
                        class="flex flex-col bg-white drop-shadow hover:drop-shadow-lg hover:opacity-70 rounded-md">
                        <!-- <img src=" #/wp-content/uploads/2022/07/kindacode-example.png"
                            alt="Fiction Product" class="h-36 object-cover rounded-tl-md rounded-tr-md"> -->
                        @if(Auth::user()->faculty =='')<div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-yellow-200 text-white font-bold">
                            Pending </div>@endif @if(Auth::user()->faculty =='approved')<div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-green-200 text-white font-bold">
                            {{Auth::user()->faculty}} </div>@endif @if(Auth::user()->faculty =='declined') <div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-pink-200 text-white font-bold">
                            {{Auth::user()->faculty}} </div>@endif <div class="px-3 py-2">
                            <h1 class="font-semibold">Faculty</h1>
                            <p class="text-sm">{{Auth::user()->faculty}}</p>
                        </div>
                    </a>
                    <!-- product card -->
                    <a href="#"
                        class="flex flex-col bg-white drop-shadow hover:drop-shadow-lg hover:opacity-70 rounded-md">
                        <!-- <img src=" #/wp-content/uploads/2022/07/kindacode-example.png"
                            alt="Fiction Product" class="h-36 object-cover rounded-tl-md rounded-tr-md"> -->
                        @if(Auth::user()->security =='')<div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-yellow-200 text-white font-bold">
                            Pending </div>@endif @if(Auth::user()->security =='approved')<div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-green-200 text-white font-bold">
                            {{Auth::user()->security}} </div>@endif @if(Auth::user()->security =='declined') <div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-pink-200 text-white font-bold">
                            {{Auth::user()->security}} </div>@endif <div class="px-3 py-2">
                            <h1 class="font-semibold">Security</h1>
                            <p class="text-sm">{{Auth::user()->security}}</p>
                        </div>
                    </a>
                    <!-- product card -->
                    <a href="#"
                        class="flex flex-col bg-white drop-shadow hover:drop-shadow-lg hover:opacity-70 rounded-md">
                        <!-- <img src=" #/wp-content/uploads/2022/07/kindacode-example.png"
                            alt="Fiction Product" class="h-36 object-cover rounded-tl-md rounded-tr-md"> -->
                        @if(Auth::user()->sport =='')<div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-yellow-200 text-white font-bold">
                            Pending </div>@endif @if(Auth::user()->sport =='approved')<div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-green-200 text-white font-bold">
                            {{Auth::user()->sport}} </div>@endif @if(Auth::user()->sport =='declined') <div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-pink-200 text-white font-bold">
                            {{Auth::user()->sport}} </div>@endif <div class="px-3 py-2">
                            <h1 class="font-semibold">Sport</h1>
                            <p class="text-sm">{{Auth::user()->sport}}</p>
                        </div>
                    </a>
                    <!-- product card -->
                    <a href="#"
                        class="flex flex-col bg-white drop-shadow hover:drop-shadow-lg hover:opacity-70 rounded-md">
                        <!-- <img src=" #/wp-content/uploads/2022/07/kindacode-example.png"
                            alt="Fiction Product" class="h-36 object-cover rounded-tl-md rounded-tr-md"> -->
                        @if(Auth::user()->department =='')<div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-yellow-200 text-white font-bold">
                            Pending </div>@endif @if(Auth::user()->department =='approved')<div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-green-200 text-white font-bold">
                            {{Auth::user()->department}} </div>@endif @if(Auth::user()->department =='declined') <div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-pink-200 text-white font-bold">
                            {{Auth::user()->sport}} </div>@endif <div class="px-3 py-2">
                            <h1 class="font-semibold">Department</h1>
                            <p class="text-sm">{{Auth::user()->department}}</p>
                        </div>
                    </a>
                    <!-- product card -->
                    <a href="#"
                        class="flex flex-col bg-white drop-shadow hover:drop-shadow-lg hover:opacity-70 rounded-md">
                        <!-- <img src=" #/wp-content/uploads/2022/07/kindacode-example.png"
                            alt="Fiction Product" class="h-36 object-cover rounded-tl-md rounded-tr-md"> -->
                        @if(Auth::user()->hostel =='')<div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-yellow-200 text-white font-bold">
                            Pending </div>@endif @if(Auth::user()->hostel =='approved')<div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-green-200 text-white font-bold">
                            {{Auth::user()->hostel}} </div>@endif @if(Auth::user()->hostel =='declined') <div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-pink-200 text-white font-bold">
                            {{Auth::user()->hostel}} </div>@endif <div class="px-3 py-2">
                            <h1 class="font-semibold">Hostel</h1>
                            <p class="text-sm">{{Auth::user()->hostel}}</p>
                        </div>
                    </a>
                    <!-- product card -->
                    <a href="#"
                        class="flex flex-col bg-white drop-shadow hover:drop-shadow-lg hover:opacity-70 rounded-md">
                        <!-- <img src=" #/wp-content/uploads/2022/07/kindacode-example.png"
                            alt="Fiction Product" class="h-36 object-cover rounded-tl-md rounded-tr-md"> -->
                        @if(Auth::user()->laboratory =='')<div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-yellow-200 text-white font-bold">
                            Pending </div>@endif @if(Auth::user()->laboratory =='approved')<div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-green-200 text-white font-bold">
                            {{Auth::user()->laboratory}} </div>@endif @if(Auth::user()->laboratory =='declined') <div
                            class="h-36 object-cover rounded-tl-md rounded-tr-md text-5xl text-center flex justify-center uppercase pt-10 bg-pink-200 text-white font-bold">
                            {{Auth::user()->laboratory}} </div>@endif <div class="px-3 py-2">
                            <h1 class="font-semibold">Laboratory</h1>
                            <p class="text-sm">{{Auth::user()->laboratory}}</p>
                        </div>
                    </a>
                    <!-- product card -->
                    <!-- <a href="#"
                        class="flex flex-col bg-white drop-shadow hover:drop-shadow-lg hover:opacity-70 rounded-md">
                        <img src=" #/wp-content/uploads/2022/07/kindacode-example.png" alt="Fiction Product"
                            class="h-36 object-cover rounded-tl-md rounded-tr-md">
                        <div class="px-3 py-2">
                            <h1 class="font-semibold">Senate</h1>
                            <p class="text-sm"></p>
                        </div>
                    </a> -->
                </div>
            </div>
        </div>
    </div>
</x-app-layout>