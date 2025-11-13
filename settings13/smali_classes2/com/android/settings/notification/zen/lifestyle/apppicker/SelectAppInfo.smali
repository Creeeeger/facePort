.class public Lcom/android/settings/notification/zen/lifestyle/apppicker/SelectAppInfo;
.super Ljava/lang/Object;
.source "SelectAppInfo.java"


# static fields
.field public static final NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/notification/zen/lifestyle/apppicker/SelectAppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$Z7KsX0tT2-RkdaNDrcMS2JGkDwA(Lcom/android/settings/notification/zen/lifestyle/apppicker/SelectAppInfo;Lcom/android/settings/notification/zen/lifestyle/apppicker/SelectAppInfo;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/SelectAppInfo;->lambda$static$0(Lcom/android/settings/notification/zen/lifestyle/apppicker/SelectAppInfo;Lcom/android/settings/notification/zen/lifestyle/apppicker/SelectAppInfo;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/android/settings/notification/zen/lifestyle/apppicker/SelectAppInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/SelectAppInfo$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/settings/notification/zen/lifestyle/apppicker/SelectAppInfo;->NAME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/SelectAppInfo;->appName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/SelectAppInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method private static synthetic lambda$static$0(Lcom/android/settings/notification/zen/lifestyle/apppicker/SelectAppInfo;Lcom/android/settings/notification/zen/lifestyle/apppicker/SelectAppInfo;)I
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/lifestyle/apppicker/SelectAppInfo;->getAppName()Ljava/lang/String;

    move-result-object p0

    .line 47
    invoke-virtual {p1}, Lcom/android/settings/notification/zen/lifestyle/apppicker/SelectAppInfo;->getAppName()Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/SelectAppInfo;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/notification/zen/lifestyle/apppicker/SelectAppInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method
