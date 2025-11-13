.class public abstract Lcom/samsung/android/sume/core/filter/PluginFilter;
.super Ljava/lang/Object;
.source "PluginFilter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/MediaFilter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
        "*>;>",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/filter/MediaFilter;"
    }
.end annotation


# instance fields
.field protected blacklist plugin:Lcom/samsung/android/sume/core/plugin/PluginFixture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/core/plugin/PluginFixture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plugin"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 9
    .local p0, "this":Lcom/samsung/android/sume/core/filter/PluginFilter;, "Lcom/samsung/android/sume/core/filter/PluginFilter<TT;>;"
    .local p1, "plugin":Lcom/samsung/android/sume/core/plugin/PluginFixture;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/PluginFilter;->plugin:Lcom/samsung/android/sume/core/plugin/PluginFixture;

    .line 11
    return-void
.end method
