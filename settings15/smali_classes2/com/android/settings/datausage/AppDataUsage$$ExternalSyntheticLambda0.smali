.class public final synthetic Lcom/android/settings/datausage/AppDataUsage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/datausage/AppDataUsage;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/datausage/AppDataUsage;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;

    sget-object v0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->bindData(Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
