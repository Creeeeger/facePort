.class public final enum Lcom/android/server/SemServiceAccessControl$PackageList;
.super Ljava/lang/Enum;
.source "SemServiceAccessControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SemServiceAccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PackageList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/SemServiceAccessControl$PackageList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/server/SemServiceAccessControl$PackageList;

.field public static final enum blacklist MCosPatchPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

.field public static final enum blacklist MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

.field public static final enum blacklist MFactoryResetList:Lcom/android/server/SemServiceAccessControl$PackageList;

.field public static final enum blacklist MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

.field public static final enum blacklist MHWParamPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

.field public static final enum blacklist MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

.field public static final enum blacklist MLccmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

.field public static final enum blacklist MSKMSCardPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

.field public static final enum blacklist MScpKmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 16

    .line 52
    new-instance v0, Lcom/android/server/SemServiceAccessControl$PackageList;

    const-string v1, "MJavaPkgList"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$PackageList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    .line 53
    new-instance v1, Lcom/android/server/SemServiceAccessControl$PackageList;

    const-string v3, "MScpKmPkgList"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/SemServiceAccessControl$PackageList;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/SemServiceAccessControl$PackageList;->MScpKmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    .line 54
    new-instance v3, Lcom/android/server/SemServiceAccessControl$PackageList;

    const-string v5, "MGrdmPkgList"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/SemServiceAccessControl$PackageList;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    .line 55
    new-instance v5, Lcom/android/server/SemServiceAccessControl$PackageList;

    const-string v7, "MSKMSCardPkgList"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/server/SemServiceAccessControl$PackageList;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/SemServiceAccessControl$PackageList;->MSKMSCardPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    .line 56
    new-instance v7, Lcom/android/server/SemServiceAccessControl$PackageList;

    const-string v9, "MLccmPkgList"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/server/SemServiceAccessControl$PackageList;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/server/SemServiceAccessControl$PackageList;->MLccmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    .line 57
    new-instance v9, Lcom/android/server/SemServiceAccessControl$PackageList;

    const-string v11, "MFactoryPkgList"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/server/SemServiceAccessControl$PackageList;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    .line 58
    new-instance v11, Lcom/android/server/SemServiceAccessControl$PackageList;

    const-string v13, "MHWParamPkgList"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/server/SemServiceAccessControl$PackageList;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/server/SemServiceAccessControl$PackageList;->MHWParamPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    .line 59
    new-instance v13, Lcom/android/server/SemServiceAccessControl$PackageList;

    const-string v15, "MCosPatchPkgList"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/server/SemServiceAccessControl$PackageList;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/server/SemServiceAccessControl$PackageList;->MCosPatchPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    .line 60
    new-instance v15, Lcom/android/server/SemServiceAccessControl$PackageList;

    const-string v14, "MFactoryResetList"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/server/SemServiceAccessControl$PackageList;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryResetList:Lcom/android/server/SemServiceAccessControl$PackageList;

    .line 51
    const/16 v14, 0x9

    new-array v14, v14, [Lcom/android/server/SemServiceAccessControl$PackageList;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lcom/android/server/SemServiceAccessControl$PackageList;->$VALUES:[Lcom/android/server/SemServiceAccessControl$PackageList;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/server/SemServiceAccessControl$PackageList;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 51
    const-class v0, Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/SemServiceAccessControl$PackageList;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/server/SemServiceAccessControl$PackageList;
    .locals 1

    .line 51
    sget-object v0, Lcom/android/server/SemServiceAccessControl$PackageList;->$VALUES:[Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0}, [Lcom/android/server/SemServiceAccessControl$PackageList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/SemServiceAccessControl$PackageList;

    return-object v0
.end method
