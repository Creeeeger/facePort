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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/PluginFilter;->plugin:Lcom/samsung/android/sume/core/plugin/PluginFixture;

    return-void
.end method
