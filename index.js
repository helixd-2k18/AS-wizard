var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
var _this = this;
(function () { return __awaiter(_this, void 0, void 0, function () {
    var imports, mpath, simetype, fs, fetch, readFile, writeFile, loader, module, f128_wrap, f32x4_t, f32x4_wrap, a, b, c;
    return __generator(this, function (_a) {
        imports = {
            env: { abort: function (msgPtr, filePtr, line, column) {
                    throw new Error("index.ts: abort at [" + line + ":" + column + "]");
                } }
        };
        mpath = "./build/optimized.wasm";
        simetype = /** @class */ (function () {
            function simetype() {
            }
            return simetype;
        }());
        ;
        ;
        fs = require("fs"), fetch = require('node-fetch');
        readFile = function (path, opts) {
            if (opts === void 0) { opts = 'utf8'; }
            return new Promise(function (resolve, reject) {
                fs.readFile(path, opts, function (err, data) {
                    if (err)
                        reject(err);
                    else
                        resolve(data);
                });
            });
        };
        writeFile = function (path, data, opts) {
            if (opts === void 0) { opts = 'utf8'; }
            return new Promise(function (resolve, reject) {
                fs.writeFile(path, data, opts, function (err) {
                    if (err)
                        reject(err);
                    else
                        resolve();
                });
            });
        };
        loader = require("@assemblyscript/loader");
        module = loader.instantiateBuffer(fs.readFileSync(mpath), imports);
        f128_wrap = module.f128_wrap, f32x4_t = module.get_f32x4_opset();
        f32x4_wrap = new f128_wrap(0, f32x4_t);
        a = new f128_wrap(0, f32x4_t), b = new f128_wrap(0, f32x4_t), c = new f128_wrap(0, f32x4_t);
        f32x4_wrap.splat(1.0, a.ptr());
        f32x4_wrap.splat(2.0, b.ptr());
        a.add(b.ptr(), c.ptr());
        //a.add(b.ptr(),c.ptr());
        console.log(c.get());
        return [2 /*return*/];
    });
}); })();
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyJpbmRleC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQUFBLGlCQXNEQTtBQXREQSxDQUFDOzs7UUFFUyxPQUFPLEdBQUc7WUFDWixHQUFHLEVBQUUsRUFBRSxLQUFLLFlBQUMsTUFBTSxFQUFFLE9BQU8sRUFBRSxJQUFJLEVBQUUsTUFBTTtvQkFDdEMsTUFBTSxJQUFJLEtBQUssQ0FBQyx5QkFBd0IsSUFBSSxTQUFNLE1BQU0sTUFBSSxDQUFDLENBQUM7Z0JBQ2xFLENBQUMsRUFBQztTQUNMLENBQUM7UUFDRSxLQUFLLEdBQUcsd0JBQXdCLENBQUM7UUFFckM7WUFBQTtZQUtBLENBQUM7WUFBRCxlQUFDO1FBQUQsQ0FBQyxBQUxELElBS0M7UUFBQSxDQUFDO1FBSUQsQ0FBQztRQUVJLEVBQUUsR0FBRyxPQUFPLENBQUMsSUFBSSxDQUFDLEVBQUUsS0FBSyxHQUFHLE9BQU8sQ0FBQyxZQUFZLENBQUMsQ0FBQztRQUVsRCxRQUFRLEdBQUcsVUFBQyxJQUFJLEVBQUUsSUFBYTtZQUFiLHFCQUFBLEVBQUEsYUFBYTtZQUNyQyxPQUFBLElBQUksT0FBTyxDQUFDLFVBQUMsT0FBTyxFQUFFLE1BQU07Z0JBQzFCLEVBQUUsQ0FBQyxRQUFRLENBQUMsSUFBSSxFQUFFLElBQUksRUFBRSxVQUFDLEdBQUcsRUFBRSxJQUFJO29CQUNoQyxJQUFJLEdBQUc7d0JBQUUsTUFBTSxDQUFDLEdBQUcsQ0FBQyxDQUFBOzt3QkFDZixPQUFPLENBQUMsSUFBSSxDQUFDLENBQUE7Z0JBQ3BCLENBQUMsQ0FBQyxDQUFBO1lBQ0osQ0FBQyxDQUFDO1FBTEYsQ0FLRSxDQUFBO1FBRUUsU0FBUyxHQUFHLFVBQUMsSUFBSSxFQUFFLElBQUksRUFBRSxJQUFhO1lBQWIscUJBQUEsRUFBQSxhQUFhO1lBQzFDLE9BQUEsSUFBSSxPQUFPLENBQUMsVUFBQyxPQUFPLEVBQUUsTUFBTTtnQkFDMUIsRUFBRSxDQUFDLFNBQVMsQ0FBQyxJQUFJLEVBQUUsSUFBSSxFQUFFLElBQUksRUFBRSxVQUFDLEdBQUc7b0JBQ2pDLElBQUksR0FBRzt3QkFBRSxNQUFNLENBQUMsR0FBRyxDQUFDLENBQUE7O3dCQUNmLE9BQU8sRUFBRSxDQUFBO2dCQUNoQixDQUFDLENBQUMsQ0FBQTtZQUNKLENBQUMsQ0FBQztRQUxGLENBS0UsQ0FBQTtRQUdJLE1BQU0sR0FBRyxPQUFPLENBQUMsd0JBQXdCLENBQUMsQ0FBQztRQUMzQyxNQUFNLEdBQUcsTUFBTSxDQUFDLGlCQUFpQixDQUFDLEVBQUUsQ0FBQyxZQUFZLENBQUMsS0FBSyxDQUFDLEVBQUUsT0FBTyxDQUFDLENBQUM7UUFDckUsU0FBUyxHQUF1QixNQUFNLENBQUMsU0FBUyxFQUFFLE9BQU8sR0FBRyxNQUFNLENBQUMsZUFBZSxFQUFFLENBQUM7UUFDckYsVUFBVSxHQUFHLElBQUksU0FBUyxDQUFDLENBQUMsRUFBRSxPQUFPLENBQUMsQ0FBQztRQUd2QyxDQUFDLEdBQUcsSUFBSSxTQUFTLENBQUMsQ0FBQyxFQUFFLE9BQU8sQ0FBQyxFQUFFLENBQUMsR0FBRyxJQUFJLFNBQVMsQ0FBQyxDQUFDLEVBQUUsT0FBTyxDQUFDLEVBQUUsQ0FBQyxHQUFHLElBQUksU0FBUyxDQUFDLENBQUMsRUFBRSxPQUFPLENBQUMsQ0FBQztRQUNoRyxVQUFVLENBQUMsS0FBSyxDQUFDLEdBQUcsRUFBRSxDQUFDLENBQUMsR0FBRyxFQUFFLENBQUMsQ0FBQztRQUMvQixVQUFVLENBQUMsS0FBSyxDQUFDLEdBQUcsRUFBRSxDQUFDLENBQUMsR0FBRyxFQUFFLENBQUMsQ0FBQztRQUMvQixDQUFDLENBQUMsR0FBRyxDQUFDLENBQUMsQ0FBQyxHQUFHLEVBQUUsRUFBRSxDQUFDLENBQUMsR0FBRyxFQUFFLENBQUMsQ0FBQztRQUN4Qix5QkFBeUI7UUFFekIsT0FBTyxDQUFDLEdBQUcsQ0FBQyxDQUFDLENBQUMsR0FBRyxFQUFFLENBQUMsQ0FBQzs7O0tBRXhCLENBQUMsRUFBRSxDQUFDIn0=