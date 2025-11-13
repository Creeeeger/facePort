.class Landroid/media/WebVttParser$5;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttParser$Phase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field final synthetic blacklist this$0:Landroid/media/WebVttParser;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 848
    const-class v0, Landroid/media/WebVttParser;

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/WebVttParser;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/WebVttParser;

    .line 848
    iput-object p1, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist parse(Ljava/lang/String;)V
    .locals 19
    .param p1, "line"    # Ljava/lang/String;

    .line 851
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "-->"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 852
    .local v3, "arrowAt":I
    if-gez v3, :cond_0

    .line 853
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/media/WebVttParser;->-$$Nest$fputmCue(Landroid/media/WebVttParser;Landroid/media/TextTrackCue;)V

    .line 854
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmParseCueId(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/media/WebVttParser;->-$$Nest$fputmPhase(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)V

    .line 855
    return-void

    .line 858
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 860
    .local v5, "start":Ljava/lang/String;
    add-int/lit8 v0, v3, 0x3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 861
    const-string v6, "^\\s+"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "\\s+"

    const-string v8, " "

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 862
    .local v0, "rest":Ljava/lang/String;
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 863
    .local v6, "spaceAt":I
    if-lez v6, :cond_1

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_1
    move-object v8, v0

    .line 864
    .local v8, "end":Ljava/lang/String;
    :goto_0
    if-lez v6, :cond_2

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    move-object v9, v7

    .line 866
    .end local v0    # "rest":Ljava/lang/String;
    .local v9, "rest":Ljava/lang/String;
    :goto_1
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    invoke-static {v5}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v0, Landroid/media/TextTrackCue;->mStartTimeMs:J

    .line 867
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    invoke-static {v8}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v0, Landroid/media/TextTrackCue;->mEndTimeMs:J

    .line 868
    const-string v0, " +"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    move v12, v4

    :goto_2
    if-ge v12, v11, :cond_14

    aget-object v13, v10, v12

    .line 869
    .local v13, "setting":Ljava/lang/String;
    const/16 v0, 0x3a

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 870
    .local v14, "colonAt":I
    if-lez v14, :cond_12

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v15, 0x1

    sub-int/2addr v0, v15

    if-ne v14, v0, :cond_3

    .line 871
    move/from16 v17, v3

    move/from16 v16, v4

    move-object/from16 v18, v5

    goto/16 :goto_6

    .line 873
    :cond_3
    invoke-virtual {v13, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 874
    .local v15, "name":Ljava/lang/String;
    add-int/lit8 v0, v14, 0x1

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 876
    .local v4, "value":Ljava/lang/String;
    const-string v0, "region"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 877
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    iput-object v4, v0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    move/from16 v17, v3

    move-object/from16 v18, v5

    const/16 v16, 0x0

    goto/16 :goto_6

    .line 878
    :cond_4
    const-string/jumbo v0, "vertical"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "has invalid value"

    move/from16 v17, v3

    .end local v3    # "arrowAt":I
    .local v17, "arrowAt":I
    const-string v3, "cue setting"

    if-eqz v0, :cond_7

    .line 879
    const-string v0, "rl"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 880
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/16 v2, 0x65

    iput v2, v0, Landroid/media/TextTrackCue;->mWritingDirection:I

    move-object/from16 v18, v5

    const/16 v16, 0x0

    goto/16 :goto_6

    .line 882
    :cond_5
    const-string v0, "lr"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 883
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/16 v2, 0x66

    iput v2, v0, Landroid/media/TextTrackCue;->mWritingDirection:I

    move-object/from16 v18, v5

    const/16 v16, 0x0

    goto/16 :goto_6

    .line 886
    :cond_6
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0, v3, v15, v2, v4}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v5

    const/16 v16, 0x0

    goto/16 :goto_6

    .line 888
    :cond_7
    const-string v0, "line"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v18, v5

    .end local v5    # "start":Ljava/lang/String;
    .local v18, "start":Ljava/lang/String;
    const-string v5, "is not numeric or percentage"

    if-eqz v0, :cond_a

    .line 891
    nop

    .line 892
    :try_start_0
    const-string v0, "%"

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 893
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 894
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    invoke-static {v4}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    goto :goto_3

    .line 895
    :cond_8
    const-string v0, ".*[^0-9].*"

    invoke-virtual {v4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 896
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string v2, "contains an invalid character"

    invoke-static {v0, v3, v15, v2, v4}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 899
    :cond_9
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 900
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 902
    :catch_0
    move-exception v0

    .line 903
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v2, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v2, v3, v15, v5, v4}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_3
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 907
    :cond_a
    const/16 v16, 0x0

    const-string v0, "position"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 909
    :try_start_1
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    invoke-static {v4}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/media/TextTrackCue;->mTextPosition:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 910
    :catch_1
    move-exception v0

    .line 911
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    iget-object v2, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v2, v3, v15, v5, v4}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_4
    goto/16 :goto_6

    .line 914
    :cond_b
    const-string/jumbo v0, "size"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 916
    :try_start_2
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    invoke-static {v4}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroid/media/TextTrackCue;->mSize:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 917
    :catch_2
    move-exception v0

    .line 918
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    iget-object v2, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v2, v3, v15, v5, v4}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_5
    goto/16 :goto_6

    .line 921
    :cond_c
    const-string v0, "align"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 922
    const-string/jumbo v0, "start"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 923
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/16 v2, 0xc9

    iput v2, v0, Landroid/media/TextTrackCue;->mAlignment:I

    goto :goto_6

    .line 924
    :cond_d
    const-string v0, "middle"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 925
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/16 v2, 0xc8

    iput v2, v0, Landroid/media/TextTrackCue;->mAlignment:I

    goto :goto_6

    .line 926
    :cond_e
    const-string v0, "end"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 927
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/16 v2, 0xca

    iput v2, v0, Landroid/media/TextTrackCue;->mAlignment:I

    goto :goto_6

    .line 928
    :cond_f
    const-string v0, "left"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 929
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/16 v2, 0xcb

    iput v2, v0, Landroid/media/TextTrackCue;->mAlignment:I

    goto :goto_6

    .line 930
    :cond_10
    const-string v0, "right"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 931
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    const/16 v2, 0xcc

    iput v2, v0, Landroid/media/TextTrackCue;->mAlignment:I

    goto :goto_6

    .line 933
    :cond_11
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0, v3, v15, v2, v4}, Landroid/media/WebVttParser;->-$$Nest$mlog_warning(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    goto :goto_6

    .line 870
    .end local v4    # "value":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "arrowAt":I
    .end local v18    # "start":Ljava/lang/String;
    .restart local v3    # "arrowAt":I
    .restart local v5    # "start":Ljava/lang/String;
    :cond_12
    move/from16 v17, v3

    move/from16 v16, v4

    move-object/from16 v18, v5

    .line 868
    .end local v3    # "arrowAt":I
    .end local v5    # "start":Ljava/lang/String;
    .end local v13    # "setting":Ljava/lang/String;
    .end local v14    # "colonAt":I
    .restart local v17    # "arrowAt":I
    .restart local v18    # "start":Ljava/lang/String;
    :cond_13
    :goto_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p1

    move/from16 v4, v16

    move/from16 v3, v17

    move-object/from16 v5, v18

    goto/16 :goto_2

    .line 939
    .end local v17    # "arrowAt":I
    .end local v18    # "start":Ljava/lang/String;
    .restart local v3    # "arrowAt":I
    .restart local v5    # "start":Ljava/lang/String;
    :cond_14
    move/from16 v17, v3

    move-object/from16 v18, v5

    .end local v3    # "arrowAt":I
    .end local v5    # "start":Ljava/lang/String;
    .restart local v17    # "arrowAt":I
    .restart local v18    # "start":Ljava/lang/String;
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    iget-object v0, v0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-nez v0, :cond_15

    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    iget v0, v0, Landroid/media/TextTrackCue;->mSize:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_15

    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    iget v0, v0, Landroid/media/TextTrackCue;->mWritingDirection:I

    if-eq v0, v2, :cond_16

    .line 943
    :cond_15
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmCue(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v0

    iput-object v7, v0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    .line 946
    :cond_16
    iget-object v0, v1, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v0}, Landroid/media/WebVttParser;->-$$Nest$fgetmParseCueText(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/media/WebVttParser;->-$$Nest$fputmPhase(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)V

    .line 947
    return-void
.end method
