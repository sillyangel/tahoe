import Orion
import Foundation

struct tahoe: Tweak {
    init() {
        let message = "[tahoe] Hello, World!\n"
        let path = "/var/mobile/Library/tahoe.txt"

        if let data = message.data(using: .utf8) {
            if FileManager.default.fileExists(atPath: path) {
                if let handle = FileHandle(forWritingAtPath: path) {
                    handle.seekToEndOfFile()
                    handle.write(data)
                    handle.closeFile()
                }
            } else {
                FileManager.default.createFile(
                    atPath: path,
                    contents: data,
                    attributes: nil
                )
            }
        }
    }
}