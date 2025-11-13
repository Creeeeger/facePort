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
.method private static synthetic blacklist $values()[Lcom/android/server/SemServiceAccessControl$PackageList;
    .locals 9

    sget-object v0, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    sget-object v1, Lcom/android/server/SemServiceAccessControl$PackageList;->MScpKmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    sget-object v2, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    sget-object v3, Lcom/android/server/SemServiceAccessControl$PackageList;->MSKMSCardPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    sget-object v4, Lcom/android/server/SemServiceAccessControl$PackageList;->MLccmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    sget-object v5, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    sget-object v6, Lcom/android/server/SemServiceAccessControl$PackageList;->MHWParamPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    sget-object v7, Lcom/android/server/SemServiceAccessControl$PackageList;->MCosPatchPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    sget-object v8, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryResetList:Lcom/android/server/SemServiceAccessControl$PackageList;

    filled-new-array/range {v0 .. v8}, [Lcom/android/server/SemServiceAccessControl$PackageList;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/SemServiceAccessControl$PackageList;

    const-string v1, "MJavaPkgList"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$PackageList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SemServiceAccessControl$PackageList;->MJavaPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    new-instance v0, Lcom/android/server/SemServiceAccessControl$PackageList;

    const-string v1, "MScpKmPkgList"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$PackageList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SemServiceAccessControl$PackageList;->MScpKmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    new-instance v0, Lcom/android/server/SemServiceAccessControl$PackageList;

    const-string v1, "MGrdmPkgList"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$PackageList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SemServiceAccessControl$PackageList;->MGrdmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    new-instance v0, Lcom/android/server/SemServiceAccessControl$PackageList;

    const-string v1, "MSKMSCardPkgList"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$PackageList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SemServiceAccessControl$PackageList;->MSKMSCardPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    new-instance v0, Lcom/android/server/SemServiceAccessControl$PackageList;

    const-string v1, "MLccmPkgList"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$PackageList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SemServiceAccessControl$PackageList;->MLccmPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    new-instance v0, Lcom/android/server/SemServiceAccessControl$PackageList;

    const-string v1, "MFactoryPkgList"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$PackageList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    new-instance v0, Lcom/android/server/SemServiceAccessControl$PackageList;

    const-string v1, "MHWParamPkgList"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$PackageList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SemServiceAccessControl$PackageList;->MHWParamPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    new-instance v0, Lcom/android/server/SemServiceAccessControl$PackageList;

    const-string v1, "MCosPatchPkgList"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$PackageList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SemServiceAccessControl$PackageList;->MCosPatchPkgList:Lcom/android/server/SemServiceAccessControl$PackageList;

    new-instance v0, Lcom/android/server/SemServiceAccessControl$PackageList;

    const-string v1, "MFactoryResetList"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/SemServiceAccessControl$PackageList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/SemServiceAccessControl$PackageList;->MFactoryResetList:Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-static {}, Lcom/android/server/SemServiceAccessControl$PackageList;->$values()[Lcom/android/server/SemServiceAccessControl$PackageList;

    move-result-object v0

    sput-object v0, Lcom/android/server/SemServiceAccessControl$PackageList;->$VALUES:[Lcom/android/server/SemServiceAccessControl$PackageList;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/server/SemServiceAccessControl$PackageList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/SemServiceAccessControl$PackageList;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/server/SemServiceAccessControl$PackageList;
    .locals 1

    sget-object v0, Lcom/android/server/SemServiceAccessControl$PackageList;->$VALUES:[Lcom/android/server/SemServiceAccessControl$PackageList;

    invoke-virtual {v0}, [Lcom/android/server/SemServiceAccessControl$PackageList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/SemServiceAccessControl$PackageList;

    return-object v0
.end method
