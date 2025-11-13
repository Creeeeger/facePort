.class public Lcom/samsung/android/media/heif/SemHeifConverter$Factory;
.super Ljava/lang/Object;
.source "SemHeifConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/heif/SemHeifConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(II)Lcom/samsung/android/media/heif/SemHeifConverter;
    .locals 1

    new-instance v0, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/media/heif/HeifConverterNativeImpl;-><init>(II)V

    return-object v0
.end method
