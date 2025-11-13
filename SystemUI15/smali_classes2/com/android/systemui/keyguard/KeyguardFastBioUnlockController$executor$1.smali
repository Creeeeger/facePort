.class public final Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$executor$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$executor$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$executor$1;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$executor$1;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$executor$1;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$executor$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance p0, Ljava/lang/Thread;

    const-string v0, "BioUnlock"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0
.end method
