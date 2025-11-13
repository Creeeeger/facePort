.class public final synthetic Lcom/android/settings/notification/NotificationAccessSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/notification/NotificationAccessSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/NotificationAccessSettings;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/notification/NotificationAccessSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/settings/notification/NotificationAccessSettings$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/notification/NotificationAccessSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/NotificationAccessSettings;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v0, 0x7f141b04

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    const v0, 0x7f1437d4

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
