.class public abstract Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ALL_PREDICATE:Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;

.field public static final LONG_UNUSED_NETWORK_PREDICATE:Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;

.field public static final OPEN_NETWORK_PREDICATE:Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;

.field public static final WEP_NETWORK_PREDICATE:Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;-><init>(I)V

    sput-object v0, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate;->ALL_PREDICATE:Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;

    new-instance v0, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;-><init>(I)V

    sput-object v0, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate;->OPEN_NETWORK_PREDICATE:Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;

    new-instance v0, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;-><init>(I)V

    sput-object v0, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate;->WEP_NETWORK_PREDICATE:Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;

    new-instance v0, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;-><init>(I)V

    sput-object v0, Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate;->LONG_UNUSED_NETWORK_PREDICATE:Lcom/samsung/android/wifitrackerlib/labs/SemNetworkPredicate$AllNetworkPredicate;

    return-void
.end method
