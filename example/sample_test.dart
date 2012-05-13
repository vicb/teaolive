#library('sample_test');

#import('../libs/teaolive.dart');

void testCase(){
  
  describe("Tea olive", (){
    
    it("makes testing Dart is awesome!", (){
      expect(1).toBe(1);
    });
  
    it("failure...", (){
      expect(1).not.toBe(1); // this test is fail.
    });
  
    it("toBe is valid.", (){
      expect(1).toBe(1);
      expect("hoge").toBe("hoge");

      var a = new Sample();
      var b = new Sample();
      
      expect(a).toBe(a);     // a === a is true
      expect(a).not.toBe(b); // a === b is false
    });
    
    it("not is valid.", (){
      expect(1).not.toBe(2);
      expect(1).not.not.toBe(1);
    });
    
    it("toBeNull is valid.", (){
      expect(null).toBeNull();
      expect("hoge").not.toBeNull();
    });

    it("toEqual is valid.", (){
      expect(1).toEqual(1);
      expect("hoge").toEqual("hoge");

      var a = new Sample();
      var b = new Sample();
      
      expect(a).toEqual(a); // a == a is true
      expect(a).toEqual(b); // a == b is true (overwrite operator ==)
    });

    describe("child", (){
  
      it("not op", (){
        
        expect(1).toBe(1);
      });
    });
  });
  
  describe("ignore tests.", (){
    
    xdescribe("ignore this description", (){
      it("unknown failing test.", (){
        throw "I don't know why raise a error!?";
      });
    });
    
    xit("unknown failing test.", (){
      throw "I don't know why raise a error!?";
    });
  });
  
  // TODO top-level it
  /*
  it("top-level it", (){
    
    expect(1).toBe(1);
  });
   */
  
}

class Sample {
  operator ==(Sample other) {
    return true;
  }
}