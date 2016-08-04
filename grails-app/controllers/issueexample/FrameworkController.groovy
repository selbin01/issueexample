package issueexample

import com.SampleVO

class FrameworkController {

    def index() {
        render view: 'mainpage'
    }

    def testformpage() {
        SampleVO sampleVO = new SampleVO()
        sampleVO.name = 'nick'
        render(view: 'testformpage', model: [sampleVO: sampleVO])
    }

    def submit(SampleVO sampleVO) {
        if (sampleVO.hasErrors()) {
            String errors = sampleVO.getErrors().toString()
            println errors
            render view:'testformpage', model:[sampleVO: sampleVO]
            return
        }
        redirect action: 'index'
    }
}
