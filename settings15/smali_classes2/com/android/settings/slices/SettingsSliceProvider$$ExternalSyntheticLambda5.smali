.class public final synthetic Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/slices/SettingsSliceProvider;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/slices/SettingsSliceProvider;Landroid/net/Uri;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/slices/SettingsSliceProvider;

    iput-object p2, p0, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda5;->f$1:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/slices/SettingsSliceProvider;

    iget-object p0, p0, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda5;->f$1:Landroid/net/Uri;

    sget-object v1, Lcom/android/settings/slices/SettingsSliceProvider;->PUBLICLY_SUPPORTED_CUSTOM_SLICE_URIS:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/settings/slices/SettingsSliceProvider;->loadSlice(Landroid/net/Uri;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/slices/SettingsSliceProvider;

    iget-object p0, p0, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda5;->f$1:Landroid/net/Uri;

    iget-object v1, v0, Lcom/android/settings/slices/SettingsSliceProvider;->mPinnedWorkers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/slices/SliceBackgroundWorker;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stopping background worker for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SettingsSliceProvider"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/settings/slices/SliceBackgroundWorker;->onSliceUnpinned()V

    invoke-static {}, Lcom/android/settings/slices/SliceBackgroundWorker$NotifySliceChangeHandler;->-$$Nest$smgetInstance()Lcom/android/settings/slices/SliceBackgroundWorker$NotifySliceChangeHandler;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v2, v2, Lcom/android/settings/slices/SliceBackgroundWorker$NotifySliceChangeHandler;->mLastUpdateTimeLookup:Ljava/util/Map;

    iget-object v1, v1, Lcom/android/settings/slices/SliceBackgroundWorker;->mUri:Landroid/net/Uri;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/settings/slices/SettingsSliceProvider;->mPinnedWorkers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
