.class abstract Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;
.super Ljava/lang/Object;
.source "SemPhotoRemasterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "IGetParam"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected blacklist mID:I


# direct methods
.method constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;->mID:I

    return-void
.end method


# virtual methods
.method abstract blacklist getParam()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
