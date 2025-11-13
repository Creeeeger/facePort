.class public interface abstract annotation Lcom/android/wm/shell/windowdecor/MTCaptionLoggerInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/android/wm/shell/windowdecor/MTCaptionLoggerInfo;
        behavior = 0x0
        interaction = 0x0
        isDexMode = false
        windowingMode = 0x0
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract behavior()I
.end method

.method public abstract interaction()I
.end method

.method public abstract isDexMode()Z
.end method

.method public abstract windowingMode()I
.end method
