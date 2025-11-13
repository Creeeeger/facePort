.class public final Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$3;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$3;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isEnabledOneHandOperation(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->turnOffFunctionsConflictWithOneHandedMode(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->setOneHandOperation(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->reduceSizeBroadcast(I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;

    sget-object p2, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->SETTINGS_URIS:[Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "any_screen_enabled"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings$3;->this$0:Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/onehandedmode/NewOneHandOperationSettings;->reduceSizeBroadcast(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
