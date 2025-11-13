.class public final Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/util/SoundPoolWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$1;->this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$1;->this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    iget-object v1, v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_b

    sget-boolean v2, Lcom/android/systemui/BasicRune;->SUPPORT_SOUND_THEME:Z

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundIDs:[I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    iget-object v4, v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "system_sound"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-nez v4, :cond_0

    move-object v4, v5

    :cond_0
    const-string v6, "Open_theme"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v0, v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "prev_system_sound"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v0

    :goto_0
    move-object v4, v5

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v3, 0x1155f

    if-eq v0, v3, :cond_7

    const v3, 0x1fee7f

    if-eq v0, v3, :cond_5

    const v3, 0x4b3327e

    if-eq v0, v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "Retro"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    goto :goto_2

    :cond_5
    const-string v0, "Calm"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const-string v0, "Fun"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    const/4 v0, 0x2

    :goto_2
    aget v0, v2, v0

    :goto_3
    move v2, v0

    goto :goto_4

    :cond_9
    iget v0, v0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundID:I

    goto :goto_3

    :goto_4
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    if-nez v0, :cond_b

    iget-object p0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper$playSound$1;->this$0:Lcom/android/systemui/volume/util/SoundPoolWrapper;

    iget-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/volume/util/SoundPoolWrapper;->soundPool:Landroid/media/SoundPool;

    :cond_b
    return-void
.end method
