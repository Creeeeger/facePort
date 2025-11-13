.class public final synthetic Lcom/android/internal/os/BinderCallsStats$UidEntry$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsLong(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Lcom/android/internal/os/BinderCallsStats$CallStat;

    invoke-static {p1}, Lcom/android/internal/os/BinderCallsStats$UidEntry;->lambda$getExtraInfo$0(Lcom/android/internal/os/BinderCallsStats$CallStat;)J

    move-result-wide v0

    return-wide v0
.end method
