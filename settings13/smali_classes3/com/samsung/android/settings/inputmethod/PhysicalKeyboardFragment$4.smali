.class Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$4;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "PhysicalKeyboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 932
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 943
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 945
    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->-$$Nest$smisDesktopEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "show_virtual_keyboard_switch"

    if-nez v0, :cond_0

    const-string v0, "show_virtual_keyboard_switch_for_dex"

    .line 946
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 948
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSamsungDexOnPCMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 952
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->-$$Nest$smisExistPogoKeyboard()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const-string p1, "share_keyboard"

    .line 957
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 936
    new-instance p0, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 937
    sget p1, Lcom/android/settings/R$xml;->sec_physical_keyboard_settings:I

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    .line 938
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
