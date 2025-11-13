.class public Lcom/samsung/android/sume/core/controller/UniImgp$Option;
.super Lcom/samsung/android/sume/core/types/OptionBase;
.source "UniImgp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/controller/UniImgp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Option"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/core/controller/UniImgp$Option;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient blacklist pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 124
    new-instance v0, Lcom/samsung/android/sume/core/controller/UniImgp$Option$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/controller/UniImgp$Option$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/controller/UniImgp$Option;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/sume/core/types/OptionBase;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/types/OptionBase;-><init>(Landroid/os/Parcel;)V

    .line 65
    return-void
.end method


# virtual methods
.method public blacklist getPluginOrderMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sume/core/types/ImgpType;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;",
            ">;>;"
        }
    .end annotation

    .line 102
    const/16 v0, 0x7d2

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/controller/UniImgp$Option;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getPluginStore()Lcom/samsung/android/sume/core/plugin/PluginStore;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/sume/core/controller/UniImgp$Option;->pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    return-object v0
.end method

.method public blacklist isLatestPluginsOrder()Z
    .locals 1

    .line 82
    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/controller/UniImgp$Option;->contains(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isUsePersistentFormat()Z
    .locals 2

    .line 68
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/controller/UniImgp$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist latestPluginsOrder()Lcom/samsung/android/sume/core/controller/UniImgp$Option;
    .locals 1

    .line 77
    const/16 v0, 0x7d1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/controller/UniImgp$Option;->set(I)Lcom/samsung/android/sume/core/types/OptionBase;

    .line 78
    return-object p0
.end method

.method public blacklist set(I)Lcom/samsung/android/sume/core/types/OptionBase;
    .locals 1
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 116
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/types/OptionBase;->set(I)Lcom/samsung/android/sume/core/types/OptionBase;

    move-result-object v0

    return-object v0
.end method

.method public blacklist set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/types/OptionBase;
    .locals 1
    .param p1, "option"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "option",
            "data"
        }
    .end annotation

    .line 121
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/types/OptionBase;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/types/OptionBase;

    move-result-object v0

    return-object v0
.end method

.method public varargs blacklist setPluginOrder(Lcom/samsung/android/sume/core/types/ImgpType;[Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;)Lcom/samsung/android/sume/core/controller/UniImgp$Option;
    .locals 3
    .param p1, "type"    # Lcom/samsung/android/sume/core/types/ImgpType;
    .param p2, "pluginOrder"    # [Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "pluginOrder"
        }
    .end annotation

    .line 94
    const/16 v0, 0x7d2

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/controller/UniImgp$Option;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/controller/UniImgp$Option;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v1, "pluginOrderMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/samsung/android/sume/core/types/ImgpType;Ljava/util/List<Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;>;>;"
    :goto_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/controller/UniImgp$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/types/OptionBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/controller/UniImgp$Option;

    return-object v0
.end method

.method public varargs blacklist setPluginOrder([Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;)Lcom/samsung/android/sume/core/controller/UniImgp$Option;
    .locals 4
    .param p1, "pluginOrder"    # [Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pluginOrder"
        }
    .end annotation

    .line 86
    const/16 v0, 0x7d2

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/controller/UniImgp$Option;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/controller/UniImgp$Option;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v1, "pluginOrderMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/samsung/android/sume/core/types/ImgpType;Ljava/util/List<Lcom/samsung/android/sume/core/plugin/ImgpPlugin$Type;>;>;"
    :goto_0
    sget-object v2, Lcom/samsung/android/sume/core/types/ImgpType;->ANY:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/controller/UniImgp$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/types/OptionBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/controller/UniImgp$Option;

    return-object v0
.end method

.method public blacklist setPluginStore(Lcom/samsung/android/sume/core/plugin/PluginStore;)Lcom/samsung/android/sume/core/controller/UniImgp$Option;
    .locals 0
    .param p1, "pluginStore"    # Lcom/samsung/android/sume/core/plugin/PluginStore;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pluginStore"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/samsung/android/sume/core/controller/UniImgp$Option;->pluginStore:Lcom/samsung/android/sume/core/plugin/PluginStore;

    .line 107
    return-object p0
.end method

.method public blacklist setUsePersistentFormat(Z)Lcom/samsung/android/sume/core/controller/UniImgp$Option;
    .locals 2
    .param p1, "usePersistentFormat"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usePersistentFormat"
        }
    .end annotation

    .line 72
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/controller/UniImgp$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/types/OptionBase;

    .line 73
    return-object p0
.end method
