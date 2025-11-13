.class public final Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$channels$1$invoke$$inlined$compareBy$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $group$inlined:Landroid/app/NotificationChannelGroup;


# direct methods
.method public constructor <init>(Landroid/app/NotificationChannelGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$channels$1$invoke$$inlined$compareBy$1;->$group$inlined:Landroid/app/NotificationChannelGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/app/NotificationChannel;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$channels$1$invoke$$inlined$compareBy$1;->$group$inlined:Landroid/app/NotificationChannelGroup;

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$channels$1$invoke$$inlined$compareBy$1;->$group$inlined:Landroid/app/NotificationChannelGroup;

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p1

    :goto_0
    check-cast p2, Landroid/app/NotificationChannel;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$channels$1$invoke$$inlined$compareBy$1;->$group$inlined:Landroid/app/NotificationChannelGroup;

    invoke-virtual {p2}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController$getDisplayableChannels$channels$1$invoke$$inlined$compareBy$1;->$group$inlined:Landroid/app/NotificationChannelGroup;

    invoke-virtual {p0}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
