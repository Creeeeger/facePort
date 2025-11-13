.class public Lcom/samsung/android/contextengine/SemContextEngineManager;
.super Ljava/lang/Object;
.source "SemContextEngineManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Lcom/samsung/android/contextengine/ISemContextEngineManager;

.field private final blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/contextengine/SemContextEngineManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/contextengine/SemContextEngineManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/contextengine/ISemContextEngineManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/contextengine/SemContextEngineManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/contextengine/SemContextEngineManager;->mService:Lcom/samsung/android/contextengine/ISemContextEngineManager;

    iput p3, p0, Lcom/samsung/android/contextengine/SemContextEngineManager;->mUserId:I

    return-void
.end method
