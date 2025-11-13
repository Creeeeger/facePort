.class public final Lcom/android/systemui/audio/soundcraft/utils/ToastUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/ToastUtil;

.field public static toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/audio/soundcraft/utils/ToastUtil;

    invoke-direct {v0}, Lcom/android/systemui/audio/soundcraft/utils/ToastUtil;-><init>()V

    sput-object v0, Lcom/android/systemui/audio/soundcraft/utils/ToastUtil;->INSTANCE:Lcom/android/systemui/audio/soundcraft/utils/ToastUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/audio/soundcraft/utils/ToastUtil$makeToast$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/audio/soundcraft/utils/ToastUtil$makeToast$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
