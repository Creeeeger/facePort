.class public Lcom/samsung/android/sume/core/filter/ImgpPluginFilter;
.super Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;
.source "ImgpPluginFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sume/core/filter/PluginDecorateFilter<",
        "Lcom/samsung/android/sume/core/plugin/ImgpPlugin;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/core/plugin/ImgpPlugin;Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 0
    .param p1, "plugin"    # Lcom/samsung/android/sume/core/plugin/ImgpPlugin;
    .param p2, "filter"    # Lcom/samsung/android/sume/core/filter/MediaFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "plugin",
            "filter"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/filter/PluginDecorateFilter;-><init>(Lcom/samsung/android/sume/core/plugin/PluginFixture;Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 9
    return-void
.end method
