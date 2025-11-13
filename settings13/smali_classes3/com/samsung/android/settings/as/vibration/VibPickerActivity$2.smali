.class Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;
.super Ljava/lang/Object;
.source "VibPickerActivity.java"

# interfaces
.implements Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/as/vibration/VibPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemRemoved(II)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$msetCheckedPosition(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;I)V

    .line 316
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmVibPickerListAdapter(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 317
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmVibPickerListAdapter(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->getCustomPatternCount()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fputmCustomPatternCount(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;I)V

    .line 319
    :cond_0
    new-instance p1, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$DeleteAsyncTask;

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$DeleteAsyncTask;-><init>(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 320
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v0

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onItemSelected(Landroid/view/View;II)V
    .locals 4

    .line 257
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmCheckedPos(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmCheckedPos(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)I

    move-result p1

    if-eq p1, p2, :cond_2

    .line 258
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmRecyclerView(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmCheckedPos(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)I

    move-result v2

    .line 259
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 261
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->radiobutton_checkedtextview:I

    .line 262
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    if-eqz v2, :cond_0

    .line 264
    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 267
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmVibPickerListAdapter(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmCheckedPos(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->getItem(I)Lcom/samsung/android/settings/as/vibration/VibPickerItem;

    move-result-object v2

    .line 268
    invoke-virtual {v2}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getCategory()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Custom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    iget-object v2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmVibHelper(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->isFromContact()Z

    move-result v2

    if-nez v2, :cond_2

    .line 270
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->removebutton:I

    .line 271
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 272
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 276
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmVibPickerListAdapter(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 277
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmVibPickerListAdapter(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmCheckedPos(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->updateItem(I)V

    .line 282
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$msetCheckedPosition(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;I)V

    .line 283
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmVibPickerListAdapter(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 284
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {p1, p3}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$mplayPatternIndex(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;I)V

    .line 286
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$misSelectedDefaultItem(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 287
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_2

    .line 289
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmVibPickerListAdapter(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {p2}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmCheckedPos(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/as/vibration/VibPickerListAdapter;->getItem(I)Lcom/samsung/android/settings/as/vibration/VibPickerItem;

    move-result-object p1

    .line 290
    invoke-virtual {p1}, Lcom/samsung/android/settings/as/vibration/VibPickerItem;->getPattern()I

    move-result p1

    .line 292
    iget-object p2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {p2}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmVibHelper(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Lcom/samsung/android/settings/as/vibration/VibPickerHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/settings/as/vibration/VibPickerHelper;->isFromContact()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 293
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 294
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 295
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-virtual {p0, v1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 297
    :cond_4
    sget-boolean p2, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz p2, :cond_6

    const p2, 0xc350

    if-ne p1, p2, :cond_5

    .line 299
    iget-object p2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {p2}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmResolver(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmSyncWithHapticDbName(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x1

    invoke-static {p2, p0, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 301
    :cond_5
    iget-object p2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {p2}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmResolver(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {p3}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmSyncWithHapticDbName(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 302
    iget-object p2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {p2}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmResolver(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmSepIndexDbName(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 305
    :cond_6
    iget-object p2, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {p2}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmResolver(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/VibPickerActivity$2;->this$0:Lcom/samsung/android/settings/as/vibration/VibPickerActivity;

    invoke-static {p0}, Lcom/samsung/android/settings/as/vibration/VibPickerActivity;->-$$Nest$fgetmSepIndexDbName(Lcom/samsung/android/settings/as/vibration/VibPickerActivity;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 308
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Current selected pattern index : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VibPickerActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void
.end method
