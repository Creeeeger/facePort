.class public final Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;

.field public final synthetic this$0$1:Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;->this$0$1:Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;

    return-void
.end method


# virtual methods
.method public final refreshRssiViews$com$samsung$android$settings$wifi$develop$details$WifiNetworkDetailPreferenceController$Viewer()V
    .locals 5

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$ConnectedViewer;->this$0$1:Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget v1, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mRssiSignalLevel:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mIconInjector:Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$IconInjector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, v2, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController$IconInjector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getWifiIconResource(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071457

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    if-ne v3, v2, :cond_1

    if-eq v4, v2, :cond_3

    :cond_1
    instance-of v3, v1, Landroid/graphics/drawable/VectorDrawable;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {v1, v2, v2}, Lcom/android/settings/Utils;->createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v1, v2

    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailPreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/content/Context;)Lcom/android/settingslib/widget/LayoutPreference;

    return-void
.end method
