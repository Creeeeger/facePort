.class Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$1;
.super Ljava/lang/Object;
.source "SemPhotoRemaster.java"

# interfaces
.implements Lcom/samsung/android/photoremaster/IDirector$ProgressUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->setParameters(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final blacklist mListener:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ProgressUpdateListener;

.field final synthetic blacklist this$0:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$1;->this$0:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$1;->this$0:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;

    invoke-static {v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;->-$$Nest$fgetmBuilder(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster;)Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;->-$$Nest$fgetmListener(Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$Builder;)Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ProgressUpdateListener;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$1;->mListener:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ProgressUpdateListener;

    return-void
.end method


# virtual methods
.method public blacklist onUpdateMetadata(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$1;->mListener:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ProgressUpdateListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ProgressUpdateListener;->onUpdateMetadata(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onUpdateProgress(DII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$1;->mListener:Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ProgressUpdateListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/media/photoremaster/SemPhotoRemaster$ProgressUpdateListener;->onUpdateProgress(DII)V

    return-void
.end method
