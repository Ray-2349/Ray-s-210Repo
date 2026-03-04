<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step name="Zoom" xmlns:p="http://www.w3.org/ns/xproc"
    exclude-inline-prefixes="#all" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ex="extensions"
    xmlns:cx="http://xmlcalabash.com/ns/extensions" xmlns:c="http://www.w3.org/ns/xproc-step"
    version="3.0">
    <p:input port="source" primary="true" content-types="text/plain" href=""/>
        
    <p:identity/>
    <p:invisible-xml cx:processor="markup-blitz">
        <p:with-input port="grammer">
            <p:document href="Zoom-transcript.ixml" content-type="text/plain"/>
        </p:with-input>
    </p:invisible-xml>
    <p:identity/>
    <p:store name="XML" href="zoom-transcript.xml"/>
    <p:xslt>
        <p:with-input port="source">
            <p:pipe step="XML" port="result"/>
        </p:with-input>
    </p:xslt>
</p:declare-step>