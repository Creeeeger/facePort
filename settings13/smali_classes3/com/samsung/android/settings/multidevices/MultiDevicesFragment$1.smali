.class Lcom/samsung/android/settings/multidevices/MultiDevicesFragment$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "MultiDevicesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    invoke-static {p1, p0}, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->-$$Nest$smappendQuickShareRaw(Landroid/content/Context;Ljava/util/List;)V

    .line 235
    invoke-static {p1, p0}, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->-$$Nest$smappendSmartThingsRaw(Landroid/content/Context;Ljava/util/List;)V

    .line 238
    invoke-static {p1, p0}, Lcom/samsung/android/settings/multidevices/MultiDevicesFragment;->-$$Nest$smappendAutoSwitchBudsRaw(Landroid/content/Context;Ljava/util/List;)V

    return-object p0
.end method
