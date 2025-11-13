.class public abstract Lcom/samsung/android/sume/core/plugin/PluginFixture;
.super Ljava/lang/Object;
.source "PluginFixture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected blacklist contentFilterRegister:Lcom/samsung/android/sume/core/filter/ContentFilterRegister;

.field private blacklist deInitializer:Ljava/lang/Runnable;

.field private blacklist descriptorLoader:Lcom/samsung/android/sume/core/functional/DescriptorLoader;

.field private blacklist descriptorStreamLoader:Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;

.field private blacklist initializer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/plugin/Plugin;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/plugin/Plugin<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p0}, Lcom/samsung/android/sume/core/plugin/Plugin;->bindToFixture(Lcom/samsung/android/sume/core/plugin/PluginFixture;)V

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/plugin/PluginFixture;->validate()Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "fail to check validation of plugin"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/core/Def;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist getContentFilterRegister()Lcom/samsung/android/sume/core/filter/ContentFilterRegister;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginFixture;->contentFilterRegister:Lcom/samsung/android/sume/core/filter/ContentFilterRegister;

    return-object v0
.end method

.method public blacklist getDescriptorLoader()Lcom/samsung/android/sume/core/functional/DescriptorLoader;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginFixture;->descriptorLoader:Lcom/samsung/android/sume/core/functional/DescriptorLoader;

    return-object v0
.end method

.method public blacklist getDescriptorStreamLoader()Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginFixture;->descriptorStreamLoader:Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;

    return-object v0
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginFixture;->initializer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginFixture;->initializer:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public blacklist release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginFixture;->deInitializer:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginFixture;->deInitializer:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public blacklist setContentFilterRegister(Lcom/samsung/android/sume/core/filter/ContentFilterRegister;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/PluginFixture;->contentFilterRegister:Lcom/samsung/android/sume/core/filter/ContentFilterRegister;

    return-void
.end method

.method public blacklist setDeInitializer(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/PluginFixture;->deInitializer:Ljava/lang/Runnable;

    return-void
.end method

.method public blacklist setDescriptorLoader(Lcom/samsung/android/sume/core/functional/DescriptorLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/PluginFixture;->descriptorLoader:Lcom/samsung/android/sume/core/functional/DescriptorLoader;

    return-void
.end method

.method public blacklist setDescriptorStreamLoader(Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/PluginFixture;->descriptorStreamLoader:Lcom/samsung/android/sume/core/functional/DescriptorStreamLoader;

    return-void
.end method

.method public blacklist setInitializer(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/PluginFixture;->initializer:Ljava/util/function/Consumer;

    return-void
.end method

.method public abstract blacklist validate()Z
.end method
