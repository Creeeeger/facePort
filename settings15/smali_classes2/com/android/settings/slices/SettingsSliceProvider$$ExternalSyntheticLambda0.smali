.class public final synthetic Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/slices/SettingsSliceProvider;

.field public final synthetic f$1:Lcom/android/settings/slices/Sliceable;

.field public final synthetic f$2:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/slices/SettingsSliceProvider;Lcom/android/settings/slices/Sliceable;Landroid/net/Uri;I)V
    .locals 0

    iput p4, p0, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/slices/SettingsSliceProvider;

    iput-object p2, p0, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/slices/Sliceable;

    iput-object p3, p0, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/slices/SettingsSliceProvider;

    iget-object v1, p0, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/slices/Sliceable;

    check-cast v1, Lcom/android/settings/slices/CustomSliceable;

    iget-object p0, p0, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/slices/SettingsSliceProvider;->PUBLICLY_SUPPORTED_CUSTOM_SLICE_URIS:Ljava/util/List;

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/slices/SettingsSliceProvider;->startBackgroundWorker(Lcom/android/settings/slices/Sliceable;Landroid/net/Uri;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/slices/SettingsSliceProvider;

    iget-object v1, p0, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/slices/Sliceable;

    check-cast v1, Lcom/android/settings/core/BasePreferenceController;

    iget-object p0, p0, Lcom/android/settings/slices/SettingsSliceProvider$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/slices/SettingsSliceProvider;->PUBLICLY_SUPPORTED_CUSTOM_SLICE_URIS:Ljava/util/List;

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/slices/SettingsSliceProvider;->startBackgroundWorker(Lcom/android/settings/slices/Sliceable;Landroid/net/Uri;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
