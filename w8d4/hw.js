titleize =  function(arr, callback){
    map = arr.map(ele => callback(ele));
    map.forEach(ele => console.log(ele))
    ;}


    printCallback = function(ele){
        return  'Mx. '+ ele + ' Jingleheimer Schmidt'
    };

    // console.log(titleize(["Mary", "Brian", "Leo"], printCallback));

    Elephant = function(nm,hgt,arr){
        this.name = nm;
        this.height = hgt;
        this.tricks = arr;

        // Elephant.prototype.name = function(){
        //     return name;
        // };

        Elephant.prototype.trumpet = function(){
            console.log(name);
        };

        Elephant.prototype.grow = function(){
            height += 12;
            console.log(height);
        };

        Elephant.prototype.addTrick = function(trick){
            tricks.push(trick);
        };

        Elephant.prototype.play = function(){
            num = (Math.random() * 10) % tricks.length;
            num = Math.floor(num)
            console.log(tricks[num]);
        };

    };

    
    Elephant.paradeHelper = function(eleIn){
        console.log(eleIn.name +" is trotting by!")
    };

    function dinerBreakfast() {
        let order = "I'd like cheesy scrambled eggs please.";
        console.log(order);
      
        return function (food) {
          order = `${order.slice(0, order.length - 8)} and ${food} please.`;
          console.log(order);
        };
      };
      
    
    // let dumbo = new Elephant("dumbo" , 120, ["fly"]);
    // dumbo.trumpet()
    // dumbo.grow()
    // dumbo.addTrick("derp")
    // dumbo.play()

    let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
    let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
    let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
    let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

    let herd = [ellie, charlie, kate, micah];
    herd.forEach(ele=> Elephant.paradeHelper(ele) );


    let bfastOrder = dinerBreakfast();
    bfastOrder("chocolate chip pancakes");
    bfastOrder("grits");