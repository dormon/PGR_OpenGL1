SRCDIR = src/
TARGET = presentation

%.pdf: %.svg
	rsvg-convert -f pdf -o $@ $<

introductionImages = \
	pics/gpu/gcn.pdf\
	pics/gpu/gpu_common.pdf\
	pics/gpu/gpu_gpuvscpu.pdf\
	pics/gpu/memory_hierarchy.pdf\
	pics/gpu/threadHierarchy.pdf\
	pics/gpu/thread_hierarchy.pdf\
	pics/model/primitive.pdf\
	pics/opengl/RenderingPipeline.pdf\
	pics/opengl/clientserver.pdf\
	pics/opengl/logo.pdf\
	pics/pipeline/OpenGL460Pipeline.pdf\
	pics/pipeline/OpenGL460PipelineClipping.pdf\
	pics/pipeline/OpenGL460PipelineFragmentShader.pdf\
	pics/pipeline/OpenGL460PipelineGeometryShader.pdf\
	pics/pipeline/OpenGL460PipelineRaster.pdf\
	pics/pipeline/OpenGL460PipelineTessellationShaders.pdf\
	pics/pipeline/OpenGL460PipelineVertexShader.pdf\
	pics/pipeline/RenderingPipelineMemoryPipeline.pdf\
	pics/pipeline/RenderingPipelineVector.pdf\
	pics/pipeline/RenderingPipelineVectorRaster.pdf\
	pics/pipeline/barycentrickekoordinaty.pdf\
	pics/pipeline/interpolace.pdf\
	pics/pipeline/prespektivni_korekce.pdf\
	pics/program/cpp_and_glsl.pdf\
	pics/program/shader_combination.pdf\
	pics/vao/puller0.pdf\
	pics/vao/puller1.pdf\
	pics/vao/vao.pdf\

all: ${introductionImages}
	pdflatex -shell-escape $(SRCDIR)$(TARGET)
	pdflatex -shell-escape $(SRCDIR)$(TARGET)
	#bibtex $(TARGET)
	#pdflatex -shell-escape $(TARGET)
	#pdflatex -shell-escape $(TARGET)

clean:
	rm -rf *.aux *.pdf *.log *.toc *.bbl *.blg *.out *.nav *.snm *.pyg *.vrb _minted-presentation ${introductionImages}
