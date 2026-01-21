import './App.css'

function App() {
  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-500 to-purple-600 flex items-center justify-center">
      <div className="bg-white rounded-2xl shadow-2xl p-8 max-w-md w-full mx-4">
        {/* Logo */}
        <div className="text-center mb-6">
          <h1 className="text-3xl font-bold text-gray-800">🚌 SSBS</h1>
          <p className="text-gray-500 mt-2">Smart School Bus System</p>
        </div>

        {/* Status Card */}
        <div className="bg-green-100 border border-green-400 rounded-lg p-4 mb-6">
          <p className="text-green-700 text-center font-medium">
            ✅ React + TypeScript + Tailwind is working!
          </p>
        </div>

        {/* Info */}
        <div className="space-y-3 text-sm text-gray-600">
          <div className="flex items-center gap-2">
            <span className="text-blue-500">⚛️</span>
            <span>React 19</span>
          </div>
          <div className="flex items-center gap-2">
            <span className="text-blue-500">📘</span>
            <span>TypeScript</span>
          </div>
          <div className="flex items-center gap-2">
            <span className="text-cyan-500">🎨</span>
            <span>Tailwind CSS</span>
          </div>
          <div className="flex items-center gap-2">
            <span className="text-yellow-500">⚡</span>
            <span>Vite</span>
          </div>
        </div>

        {/* Button */}
        <button className="w-full mt-6 bg-blue-600 hover:bg-blue-700 text-white font-semibold py-3 px-4 rounded-lg transition-colors duration-200">
          Start Building 🚀
        </button>

        {/* Footer */}
        <p className="text-center text-xs text-gray-400 mt-6">
          ft_transcendence • 42 School
        </p>
      </div>
    </div>
  )
}

export default App
