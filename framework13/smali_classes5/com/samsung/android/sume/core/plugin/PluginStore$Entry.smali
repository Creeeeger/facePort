.class public Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;
.super Ljava/lang/Object;
.source "PluginStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/plugin/PluginStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field blacklist descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

.field blacklist pluginFixture:Lcom/samsung/android/sume/core/plugin/PluginFixture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;Lcom/samsung/android/sume/core/plugin/PluginFixture;)V
    .locals 0
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "descriptor",
            "pluginFixture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
            "*>;)V"
        }
    .end annotation

    .line 24
    .local p2, "pluginFixture":Lcom/samsung/android/sume/core/plugin/PluginFixture;, "Lcom/samsung/android/sume/core/plugin/PluginFixture<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    .line 26
    iput-object p2, p0, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;->pluginFixture:Lcom/samsung/android/sume/core/plugin/PluginFixture;

    .line 27
    return-void
.end method


# virtual methods
.method public blacklist getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    return-object v0
.end method

.method public blacklist getPluginFixture()Lcom/samsung/android/sume/core/plugin/PluginFixture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
            "*>;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;->pluginFixture:Lcom/samsung/android/sume/core/plugin/PluginFixture;

    return-object v0
.end method

.method public blacklist setDescriptor(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)V
    .locals 0
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "descriptor"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    .line 35
    return-void
.end method

.method public blacklist setPluginFixture(Lcom/samsung/android/sume/core/plugin/PluginFixture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pluginFixture"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
            "*>;)V"
        }
    .end annotation

    .line 42
    .local p1, "pluginFixture":Lcom/samsung/android/sume/core/plugin/PluginFixture;, "Lcom/samsung/android/sume/core/plugin/PluginFixture<*>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;->pluginFixture:Lcom/samsung/android/sume/core/plugin/PluginFixture;

    .line 43
    return-void
.end method
