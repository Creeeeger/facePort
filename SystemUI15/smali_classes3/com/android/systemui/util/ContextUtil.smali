.class public final Lcom/android/systemui/util/ContextUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Lcom/android/systemui/util/ContextUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/ContextUtil;

    invoke-direct {v0}, Lcom/android/systemui/util/ContextUtil;-><init>()V

    sput-object v0, Lcom/android/systemui/util/ContextUtil;->INSTANCE:Lcom/android/systemui/util/ContextUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;
    .locals 0

    const-class p0, Landroid/app/ActivityManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    return-object p0
.end method
