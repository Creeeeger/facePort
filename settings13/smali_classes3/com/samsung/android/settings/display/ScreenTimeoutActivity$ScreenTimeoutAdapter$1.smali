.class Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;
.super Ljava/lang/Object;
.source "ScreenTimeoutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 381
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->val$position:I

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->setChecked(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 382
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    iget v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;

    invoke-virtual {p1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 383
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopDualMode(Landroid/content/Context;)Z

    move-result v0

    .line 385
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->-$$Nest$fgetmDexMode(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "timeout_dex"

    const-string v4, "screen_off_timeout"

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->access$000(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-object v5, v5, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    iget v6, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->val$position:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;

    invoke-virtual {v5}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lcom/android/settings/Utils;->setDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v5, 0x7530

    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    int-to-long v3, p1

    .line 389
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v3, v0

    if-gez p1, :cond_1

    .line 390
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->screen_timeout_toast_message_for_both_display:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->access$100(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 396
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {v1, p1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->-$$Nest$mgetTimeoutLoggingValue(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;I)I

    move-result v1

    int-to-long v4, v1

    const/16 v1, 0x1074

    invoke-static {v1, v1, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v1, 0x927c0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/android/settings/Utils;->getStringFromDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    int-to-long v3, p1

    .line 400
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v3, v0

    if-lez p1, :cond_1

    .line 401
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->screen_timeout_toast_message_for_both_display:I

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
