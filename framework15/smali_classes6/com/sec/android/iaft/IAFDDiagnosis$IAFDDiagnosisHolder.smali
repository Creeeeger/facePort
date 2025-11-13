.class Lcom/sec/android/iaft/IAFDDiagnosis$IAFDDiagnosisHolder;
.super Ljava/lang/Object;
.source "IAFDDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/IAFDDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IAFDDiagnosisHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Lcom/sec/android/iaft/IAFDDiagnosis;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Lcom/sec/android/iaft/IAFDDiagnosis;
    .locals 1

    sget-object v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFDDiagnosisHolder;->INSTANCE:Lcom/sec/android/iaft/IAFDDiagnosis;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/iaft/IAFDDiagnosis;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/iaft/IAFDDiagnosis;-><init>(Lcom/sec/android/iaft/IAFDDiagnosis-IA;)V

    sput-object v0, Lcom/sec/android/iaft/IAFDDiagnosis$IAFDDiagnosisHolder;->INSTANCE:Lcom/sec/android/iaft/IAFDDiagnosis;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
