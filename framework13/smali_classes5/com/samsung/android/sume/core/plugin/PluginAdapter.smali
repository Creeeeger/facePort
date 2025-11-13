.class public Lcom/samsung/android/sume/core/plugin/PluginAdapter;
.super Ljava/lang/Object;
.source "PluginAdapter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/plugin/Plugin;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
        "*>;>",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sume/core/plugin/Plugin<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist function:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist pluginType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pluginType",
            "function"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 11
    .local p0, "this":Lcom/samsung/android/sume/core/plugin/PluginAdapter;, "Lcom/samsung/android/sume/core/plugin/PluginAdapter<TT;>;"
    .local p1, "pluginType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "function":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/PluginAdapter;->pluginType:Ljava/lang/Class;

    .line 13
    iput-object p2, p0, Lcom/samsung/android/sume/core/plugin/PluginAdapter;->function:Ljava/util/function/Consumer;

    .line 14
    return-void
.end method


# virtual methods
.method public blacklist bindToFixture(Lcom/samsung/android/sume/core/plugin/PluginFixture;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fixture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 22
    .local p0, "this":Lcom/samsung/android/sume/core/plugin/PluginAdapter;, "Lcom/samsung/android/sume/core/plugin/PluginAdapter<TT;>;"
    .local p1, "fixture":Lcom/samsung/android/sume/core/plugin/PluginFixture;, "TT;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginAdapter;->function:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public blacklist getPluginType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 17
    .local p0, "this":Lcom/samsung/android/sume/core/plugin/PluginAdapter;, "Lcom/samsung/android/sume/core/plugin/PluginAdapter<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginAdapter;->pluginType:Ljava/lang/Class;

    return-object v0
.end method
