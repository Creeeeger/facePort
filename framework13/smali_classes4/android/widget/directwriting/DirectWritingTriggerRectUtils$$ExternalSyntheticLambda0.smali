.class public final synthetic Landroid/widget/directwriting/DirectWritingTriggerRectUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/widget/directwriting/RectInfo;

    check-cast p2, Landroid/widget/directwriting/RectInfo;

    invoke-static {p1, p2}, Landroid/widget/directwriting/DirectWritingTriggerRectUtils;->lambda$adjustWidth$0(Landroid/widget/directwriting/RectInfo;Landroid/widget/directwriting/RectInfo;)I

    move-result p1

    return p1
.end method
