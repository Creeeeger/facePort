.class Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHolder;
.super Ljava/lang/Object;
.source "IAFDDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/IAFDDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IAFDDBManagerHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Lcom/sec/android/iaft/IAFDDBManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Lcom/sec/android/iaft/IAFDDBManager;
    .locals 1

    sget-object v0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHolder;->INSTANCE:Lcom/sec/android/iaft/IAFDDBManager;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/iaft/IAFDDBManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/iaft/IAFDDBManager;-><init>(Lcom/sec/android/iaft/IAFDDBManager-IA;)V

    sput-object v0, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHolder;->INSTANCE:Lcom/sec/android/iaft/IAFDDBManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
