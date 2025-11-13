.class public final Lcom/android/keyguard/punchhole/VIDirectorFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

.field public static final vendorName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    const-string v0, "ro.product.vendor.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->vendorName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
