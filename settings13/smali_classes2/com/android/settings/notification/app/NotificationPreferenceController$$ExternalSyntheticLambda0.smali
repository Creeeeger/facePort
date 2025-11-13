.class public final synthetic Lcom/android/settings/notification/app/NotificationPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/app/NotificationChannelGroup;

    check-cast p2, Landroid/app/NotificationChannelGroup;

    invoke-static {p1, p2}, Lcom/android/settings/notification/app/NotificationPreferenceController;->$r8$lambda$Oj3-oPfwLxc5DNiRfFp3Yml7jV4(Landroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)I

    move-result p0

    return p0
.end method
