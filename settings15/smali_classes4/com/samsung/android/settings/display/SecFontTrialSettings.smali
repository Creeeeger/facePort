.class public final Lcom/samsung/android/settings/display/SecFontTrialSettings;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBubbleListViewAdapter:Lcom/samsung/android/settings/display/FontPreviewBubbleListAdapter;

.field public final mContext:Landroid/content/Context;

.field public final mIntent:Landroid/content/Intent;

.field public mMaxCharacterToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/display/SecFontTrialSettings;->mIntent:Landroid/content/Intent;

    return-void
.end method
