.class final Lcom/android/settings/spa/app/appinfo/AppDataUsagePreferenceKt$AppDataUsagePreference$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/settings/spa/app/appinfo/AppDataUsagePreferenceKt$AppDataUsagePreference$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePreferenceKt$AppDataUsagePreference$1;

    invoke-direct {v0}, Lcom/android/settings/spa/app/appinfo/AppDataUsagePreferenceKt$AppDataUsagePreference$1;-><init>()V

    sput-object v0, Lcom/android/settings/spa/app/appinfo/AppDataUsagePreferenceKt$AppDataUsagePreference$1;->INSTANCE:Lcom/android/settings/spa/app/appinfo/AppDataUsagePreferenceKt$AppDataUsagePreference$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Context;

    check-cast p2, Landroid/net/NetworkTemplate;

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "networkTemplate"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/lib/AppDataUsageSummaryRepository;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;)V

    return-object p0
.end method
