.class public final Landroidx/picker/model/appdata/GroupAppData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/model/AppData;


# instance fields
.field public final appDataList:Ljava/util/List;

.field public final appInfo:Landroidx/picker/model/AppInfo;

.field public final group:Ljava/lang/String;

.field public final subLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/picker/model/AppInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    const-string v0, "group"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appDataList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/model/appdata/GroupAppData;->appInfo:Landroidx/picker/model/AppInfo;

    iput-object p2, p0, Landroidx/picker/model/appdata/GroupAppData;->group:Ljava/lang/String;

    iput-object p3, p0, Landroidx/picker/model/appdata/GroupAppData;->subLabel:Ljava/lang/String;

    iput-object p4, p0, Landroidx/picker/model/appdata/GroupAppData;->appDataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getAppInfo()Landroidx/picker/model/AppInfo;
    .locals 0

    iget-object p0, p0, Landroidx/picker/model/appdata/GroupAppData;->appInfo:Landroidx/picker/model/AppInfo;

    return-object p0
.end method
