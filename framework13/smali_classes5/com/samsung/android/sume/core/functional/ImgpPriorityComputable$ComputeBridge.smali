.class interface abstract Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable$ComputeBridge;
.super Ljava/lang/Object;
.source "ImgpPriorityComputable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ComputeBridge"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract blacklist compute(Lcom/samsung/android/sume/core/format/MutableImageFormat;Lcom/samsung/android/sume/core/format/ImageFormat;Lcom/samsung/android/sume/core/functional/ImgpPriorityCompute;)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "output",
            "priorityCompute"
        }
    .end annotation
.end method
