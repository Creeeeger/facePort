.class public final synthetic Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/volume/VolumePanelDialog;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumePanelDialog;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/volume/VolumePanelDialog;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda3;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda3;->f$1:Landroid/net/Uri;

    check-cast p1, Landroidx/slice/Slice;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/volume/VolumePanelDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanelDialog;->mLoadedSlices:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "received slice: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p1, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VolumePanelDialog"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v1

    if-eqz p1, :cond_4

    iget-object p1, v1, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    iget-object p1, p1, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    const-string v2, "error"

    invoke-static {p1, v2}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroidx/slice/SliceMetadata;->getLoadingState()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanelDialog;->mLoadedSlices:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanelDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/volume/VolumePanelDialog;Landroid/net/Uri;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanelDialog;->removeSliceLiveData(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanelDialog;->mLoadedSlices:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanelDialog;->setupAdapterWhenReady()V

    :goto_3
    return-void
.end method
