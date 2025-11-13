.class public final synthetic Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda4;->f$0:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda4;->f$0:Ljava/util/HashSet;

    check-cast p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-static {v0, p1}, Lcom/android/internal/app/AppLocaleCollector;->lambda$getIgnoredLocaleList$3(Ljava/util/HashSet;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    return-void
.end method
