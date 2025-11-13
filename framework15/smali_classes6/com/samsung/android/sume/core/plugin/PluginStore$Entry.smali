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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptor;",
            "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    iput-object p2, p0, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;->pluginFixture:Lcom/samsung/android/sume/core/plugin/PluginFixture;

    return-void
.end method


# virtual methods
.method public blacklist getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 1

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

    iget-object v0, p0, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;->pluginFixture:Lcom/samsung/android/sume/core/plugin/PluginFixture;

    return-object v0
.end method

.method public blacklist setDescriptor(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    return-void
.end method

.method public blacklist setPluginFixture(Lcom/samsung/android/sume/core/plugin/PluginFixture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/plugin/PluginFixture<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sume/core/plugin/PluginStore$Entry;->pluginFixture:Lcom/samsung/android/sume/core/plugin/PluginFixture;

    return-void
.end method
