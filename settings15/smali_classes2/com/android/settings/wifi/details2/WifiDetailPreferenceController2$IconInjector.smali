.class Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getIcon(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;->mContext:Landroid/content/Context;

    const-string v0, "Wi-Fi level is out of range! level:"

    const-string v1, "WifiUtils"

    if-gez p1, :cond_0

    invoke-static {p1, v0, v1}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    if-lt p1, v2, :cond_1

    invoke-static {p1, v0, v1}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    sget-object p2, Lcom/android/settingslib/wifi/WifiUtils;->NO_INTERNET_WIFI_PIE:[I

    aget p1, p2, p1

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/android/settingslib/wifi/WifiUtils;->WIFI_PIE:[I

    aget p1, p2, p1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
