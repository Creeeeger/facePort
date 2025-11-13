.class public final Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;
.super Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    return-void
.end method


# virtual methods
.method public final getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$3;->mAnimationFilter:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    return-object p0
.end method
