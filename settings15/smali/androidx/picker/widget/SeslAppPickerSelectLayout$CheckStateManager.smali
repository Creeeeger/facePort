.class public final Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/common/log/LogTag;


# instance fields
.field public final mCheckedMap:Ljava/util/LinkedHashMap;

.field public final mFixedAppMap:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mFixedAppMap:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mCheckedMap:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final get(Landroidx/picker/model/AppInfo;)Landroidx/picker/model/AppInfoData;
    .locals 1

    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mCheckedMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mCheckedMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/picker/model/AppInfoData;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mFixedAppMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mFixedAppMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/picker/model/AppInfoData;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getList()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mFixedAppMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$CheckStateManager;->mCheckedMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "CheckStateManager"

    return-object p0
.end method
