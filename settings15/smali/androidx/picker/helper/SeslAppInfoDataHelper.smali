.class public final Landroidx/picker/helper/SeslAppInfoDataHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/common/log/LogTag;


# instance fields
.field public final appDataListFactory:Landroidx/picker/features/scs/AppDataListSCSFactory;

.field public final mItemType:I

.field public final userId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/reflect/os/SeslUserHandleReflector;->myUserId()I

    move-result v0

    iput v0, p0, Landroidx/picker/helper/SeslAppInfoDataHelper;->userId:I

    new-instance v0, Landroidx/picker/features/scs/AppDataListSCSFactory;

    invoke-direct {v0, p1}, Landroidx/picker/features/scs/AppDataListSCSFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/picker/helper/SeslAppInfoDataHelper;->appDataListFactory:Landroidx/picker/features/scs/AppDataListSCSFactory;

    const-class p1, Landroidx/picker/model/AppData$AppDataBuilderInfo;

    const-class v0, Landroidx/picker/model/AppData$GridAppDataBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Landroidx/picker/model/AppData$AppDataBuilderInfo;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/picker/model/AppData$AppDataBuilderInfo;->itemType()I

    move-result p1

    iput p1, p0, Landroidx/picker/helper/SeslAppInfoDataHelper;->mItemType:I

    return-void

    :cond_0
    const-string p1, "get wrong itemType using Builder class"

    invoke-static {p0, p1}, Landroidx/picker/common/log/LogTagHelperKt;->error(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/picker/helper/SeslAppInfoDataHelper;->mItemType:I

    return-void
.end method


# virtual methods
.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SeslAppInfoDataHelper"

    return-object p0
.end method

.method public final getPackages(Ljava/util/List;)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Landroidx/picker/model/AppInfoDataImpl;

    sget-object v4, Landroidx/picker/model/AppInfo;->Companion:Landroidx/picker/model/AppInfo$Companion;

    const-string v4, ""

    iget v5, p0, Landroidx/picker/helper/SeslAppInfoDataHelper;->userId:I

    invoke-static {v5, v2, v4}, Landroidx/picker/model/AppInfo$Companion;->obtain(ILjava/lang/String;Ljava/lang/String;)Landroidx/picker/model/AppInfo;

    move-result-object v2

    iget v4, p0, Landroidx/picker/helper/SeslAppInfoDataHelper;->mItemType:I

    invoke-direct {v3, v2, v4}, Landroidx/picker/model/AppInfoDataImpl;-><init>(Landroidx/picker/model/AppInfo;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPackages("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/picker/common/log/LogTagHelperKt;->info(Landroidx/picker/common/log/LogTag;Ljava/lang/String;)V

    return-object v0
.end method
