.class public interface abstract annotation Lcom/android/systemui/plugins/annotations/VersionCheck;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/android/systemui/plugins/annotations/VersionCheck;
        defBoolean = false
        defFloat = 0.0f
        defInt = 0x0
        defLong = 0x0L
        defString = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract defBoolean()Z
.end method

.method public abstract defFloat()F
.end method

.method public abstract defInt()I
.end method

.method public abstract defLong()J
.end method

.method public abstract defString()Ljava/lang/String;
.end method

.method public abstract version()I
.end method
