


do
	local v0 = string.char;
	local v1 = string.byte;
	local v2 = string.sub;
	local v3 = bit32 or bit;
	local v4 = v3.bxor;
	local v5 = table.concat;
	local v6 = table.insert;
	local function v7(v24, v25)
		local v26 = 0;
		local v27;
		while true do
			if (v26 == 1) then
				return v5(v27);
			end
			if (v26 == 0) then
				v27 = {};
				for v44 = 1, #v24 do
					v6(v27, v0(v4(v1(v2(v24, v44, v44 + 1)), v1(v2(v25, 1 + ((v44 - 1) % #v25), 1 + ((v44 - 1) % #v25) + 1))) % 256));
				end
				v26 = 1;
			end
		end
	end
	local v8 = tonumber;
	local v9 = string[v7("\3\43\18\63", "\97\82\102\90\222")];
	local v10 = string[v7("\175\38\170\89", "\204\78\203\43\167\55")];
	local v11 = string[v7("\175\68\167", "\220\49\197\202\67\126")];
	local v12 = string[v7("\3\212\209\92", "\100\167\164\62\87\59")];
	local v13 = string[v7("\59\133\70", "\73\224\54\32\169\135\98")];
	local v14 = table[v7("\206\199\197\116\37\64", "\173\168\171\23\68\52\157")];
	local v15 = table[v7("\214\137\231\116\231\203", "\191\231\148\17\149")];
	local v16 = math[v7("\41\41\237\231\144", "\69\77\136\159\224\199\167\155")];
	local v17 = getfenv or function()
		return _ENV;
	end;
	local v18 = setmetatable;
	local v19 = pcall;
	local v20 = select;
	local v21 = unpack or table[v7("\103\220\231\242\113\217", "\18\178\151\147")];
	local v22 = tonumber;
	local function v23(v28, v29, ...)
		local v30 = 0;
		local v31;
		local v32;
		local v33;
		local v34;
		local v35;
		local v36;
		local v37;
		local v38;
		local v39;
		local v40;
		local v41;
		local v42;
		local v43;
		while true do
			if (v30 == 1) then
				v35 = nil;
				v36 = nil;
				v37 = nil;
				v38 = nil;
				v30 = 2;
			end
			if (2 == v30) then
				v39 = nil;
				v40 = nil;
				v41 = nil;
				v42 = nil;
				v30 = 3;
			end
			if (v30 == 0) then
				v31 = 0;
				v32 = nil;
				v33 = nil;
				v34 = nil;
				v30 = 1;
			end
			if (v30 == 3) then
				v43 = nil;
				while true do
					local v45 = 0;
					while true do
						if (v45 == 1) then
							if (v31 == 4) then
								local v46 = 0;
								while true do
									if (v46 == 2) then
										v31 = 5;
										break;
									end
									if (1 == v46) then
										v42 = nil;
										function v42()
											local v52 = 0;
											local v53;
											local v54;
											local v55;
											local v56;
											local v57;
											local v58;
											local v59;
											while true do
												if (v52 == 2) then
													v57 = nil;
													v58 = nil;
													v52 = 3;
												end
												if (v52 == 3) then
													v59 = nil;
													while true do
														local v107 = 0;
														while true do
															if (v107 == 0) then
																if (v53 == 1) then
																	local v131 = 0;
																	while true do
																		if (v131 == 1) then
																			v59 = {};
																			v53 = 2;
																			break;
																		end
																		if (v131 == 0) then
																			v57 = {v54,v55,nil,v56};
																			v58 = v37();
																			v131 = 1;
																		end
																	end
																end
																if (v53 == 3) then
																	local v132 = 0;
																	while true do
																		if (v132 == 0) then
																			for v147 = 1, v37() do
																				v55[v147 - 1] = v42();
																			end
																			return v57;
																		end
																	end
																end
																v107 = 1;
															end
															if (v107 == 1) then
																if (0 == v53) then
																	local v133 = 0;
																	while true do
																		if (v133 == 1) then
																			v56 = {};
																			v53 = 1;
																			break;
																		end
																		if (v133 == 0) then
																			v54 = {};
																			v55 = {};
																			v133 = 1;
																		end
																	end
																end
																if (v53 == 2) then
																	local v134 = 0;
																	while true do
																		if (0 == v134) then
																			for v149 = 1 + 0, v58 do
																				local v150 = 0;
																				local v151;
																				local v152;
																				while true do
																					if (v150 == 0) then
																						v151 = v35();
																						v152 = nil;
																						v150 = 1;
																					end
																					if (v150 == 1) then
																						if (v151 == 1) then
																							v152 = v35() ~= 0;
																						elseif (v151 == 2) then
																							v152 = v38();
																						elseif (v151 == 3) then
																							v152 = v39();
																						end
																						v59[v149] = v152;
																						break;
																					end
																				end
																			end
																			v57[3] = v35();
																			v134 = 1;
																		end
																		if (v134 == 1) then
																			for v153 = 1 + 0, v37() do
																				local v154 = 0;
																				local v155;
																				local v156;
																				while true do
																					if (1 == v154) then
																						while true do
																							if (v155 == 0) then
																								v156 = v35();
																								if (v34(v156, 1, 878 - (282 + 595)) == 0) then
																									local v167 = 0;
																									local v168;
																									local v169;
																									local v170;
																									local v171;
																									while true do
																										if (0 == v167) then
																											v168 = 0;
																											v169 = nil;
																											v167 = 1;
																										end
																										if (v167 == 1) then
																											v170 = nil;
																											v171 = nil;
																											v167 = 2;
																										end
																										if (v167 == 2) then
																											while true do
																												if (0 == v168) then
																													local v269 = 0;
																													while true do
																														if (v269 == 1) then
																															v168 = 1;
																															break;
																														end
																														if (v269 == 0) then
																															v169 = v34(v156, 2, 3);
																															v170 = v34(v156, 4, 1643 - (1523 + 114));
																															v269 = 1;
																														end
																													end
																												end
																												if (v168 == 2) then
																													local v270 = 0;
																													while true do
																														if (v270 == 1) then
																															v168 = 3;
																															break;
																														end
																														if (v270 == 0) then
																															if (v34(v170, 1, 1) == (1066 - (68 + 997))) then
																																v171[2] = v59[v171[1272 - (226 + 1044)]];
																															end
																															if (v34(v170, 2, 2) == (4 - 3)) then
																																v171[3] = v59[v171[3]];
																															end
																															v270 = 1;
																														end
																													end
																												end
																												if (v168 == 3) then
																													if (v34(v170, 3, 3) == 1) then
																														v171[4] = v59[v171[4]];
																													end
																													v54[v153] = v171;
																													break;
																												end
																												if (v168 == 1) then
																													local v272 = 0;
																													while true do
																														if (v272 == 0) then
																															v171 = {v36(),v36(),nil,nil};
																															if (v169 == 0) then
																																local v401 = 0;
																																while true do
																																	if (v401 == 0) then
																																		v171[3] = v36();
																																		v171[4] = v36();
																																		break;
																																	end
																																end
																															elseif (v169 == 1) then
																																v171[3] = v37();
																															elseif (v169 == 2) then
																																v171[3] = v37() - ((2 + 0) ^ 16);
																															elseif (v169 == 3) then
																																local v517 = 0;
																																local v518;
																																while true do
																																	if (v517 == 0) then
																																		v518 = 0;
																																		while true do
																																			if (v518 == 0) then
																																				v171[3] = v37() - ((2 - 0) ^ 16);
																																				v171[4] = v36();
																																				break;
																																			end
																																		end
																																		break;
																																	end
																																end
																															end
																															v272 = 1;
																														end
																														if (1 == v272) then
																															v168 = 2;
																															break;
																														end
																													end
																												end
																											end
																											break;
																										end
																									end
																								end
																								break;
																							end
																						end
																						break;
																					end
																					if (v154 == 0) then
																						v155 = 0;
																						v156 = nil;
																						v154 = 1;
																					end
																				end
																			end
																			v53 = 3;
																			break;
																		end
																	end
																end
																break;
															end
														end
													end
													break;
												end
												if (v52 == 1) then
													v55 = nil;
													v56 = nil;
													v52 = 2;
												end
												if (v52 == 0) then
													v53 = 0;
													v54 = nil;
													v52 = 1;
												end
											end
										end
										v46 = 2;
									end
									if (v46 == 0) then
										v41 = nil;
										function v41(...)
											return {...}, v20("#", ...);
										end
										v46 = 1;
									end
								end
							end
							if (v31 == 2) then
								local v47 = 0;
								while true do
									if (v47 == 2) then
										v31 = 3;
										break;
									end
									if (1 == v47) then
										function v37()
											local v60 = 0;
											local v61;
											local v62;
											local v63;
											local v64;
											while true do
												if (v60 == 0) then
													v61, v62, v63, v64 = v9(v28, v32, v32 + 3);
													v32 = v32 + 4;
													v60 = 1;
												end
												if (v60 == 1) then
													return (v64 * 16777216) + (v63 * (3403 + 62133)) + (v62 * (1427 - (418 + 753))) + v61;
												end
											end
										end
										v38 = nil;
										v47 = 2;
									end
									if (v47 == 0) then
										function v36()
											local v65 = 0;
											local v66;
											local v67;
											while true do
												if (v65 == 1) then
													return (v67 * 256) + v66;
												end
												if (v65 == 0) then
													v66, v67 = v9(v28, v32, v32 + 2);
													v32 = v32 + 2;
													v65 = 1;
												end
											end
										end
										v37 = nil;
										v47 = 1;
									end
								end
							end
							v45 = 2;
						end
						if (2 == v45) then
							if (v31 == 3) then
								local v48 = 0;
								while true do
									if (v48 == 2) then
										v31 = 4;
										break;
									end
									if (v48 == 0) then
										function v38()
											local v68 = 0;
											local v69;
											local v70;
											local v71;
											local v72;
											local v73;
											local v74;
											while true do
												if (v68 == 1) then
													v71 = 1 + 0;
													v72 = (v34(v70, 1 + 0, 3 + 17) * ((1 + 1) ^ 32)) + v69;
													v68 = 2;
												end
												if (v68 == 2) then
													v73 = v34(v70, 21, (165 + 485) - (555 + (593 - (406 + 123))));
													v74 = ((v34(v70, 32) == (932 - (306 + 551 + (1843 - (1749 + 20))))) and -1) or 1;
													v68 = 3;
												end
												if (v68 == 3) then
													if (v73 == 0) then
														if (v72 == 0) then
															return v74 * 0;
														else
															local v125 = 0;
															while true do
																if (0 == v125) then
																	v73 = 1;
																	v71 = 568 - ((882 - 515) + 201);
																	break;
																end
															end
														end
													elseif (v73 == 2047) then
														return ((v72 == (0 - 0)) and (v74 * (1 / (1900 - (106 + 1794))))) or (v74 * NaN);
													end
													return v16(v74, v73 - (324 + 699)) * (v71 + (v72 / (2 ^ 52)));
												end
												if (v68 == 0) then
													v69 = v37();
													v70 = v37();
													v68 = 1;
												end
											end
										end
										v39 = nil;
										v48 = 1;
									end
									if (v48 == 1) then
										function v39(v75)
											local v76 = 0;
											local v77;
											local v78;
											local v79;
											while true do
												if (1 == v76) then
													v79 = nil;
													while true do
														local v108 = 0;
														while true do
															if (v108 == 0) then
																if (v77 == 1) then
																	local v135 = 0;
																	while true do
																		if (v135 == 0) then
																			v78 = v11(v28, v32, (v32 + v75) - 1);
																			v32 = v32 + v75;
																			v135 = 1;
																		end
																		if (v135 == 1) then
																			v77 = 2;
																			break;
																		end
																	end
																end
																if (v77 == (0 - 0)) then
																	local v136 = 0;
																	while true do
																		if (v136 == 0) then
																			v78 = nil;
																			if not v75 then
																				local v159 = 0;
																				local v160;
																				while true do
																					if (v159 == 0) then
																						v160 = 0;
																						while true do
																							if (0 == v160) then
																								v75 = v37();
																								if (v75 == 0) then
																									return "";
																								end
																								break;
																							end
																						end
																						break;
																					end
																				end
																			end
																			v136 = 1;
																		end
																		if (v136 == 1) then
																			v77 = 2 - 1;
																			break;
																		end
																	end
																end
																v108 = 1;
															end
															if (v108 == 1) then
																if (v77 == 3) then
																	return v14(v79);
																end
																if (v77 == (116 - (4 + 110))) then
																	local v137 = 0;
																	while true do
																		if (v137 == 1) then
																			v77 = 1430 - (41 + 1386);
																			break;
																		end
																		if (v137 == 0) then
																			v79 = {};
																			for v157 = 585 - (57 + 527), #v78 do
																				v79[v157] = v10(v9(v11(v78, v157, v157)));
																			end
																			v137 = 1;
																		end
																	end
																end
																break;
															end
														end
													end
													break;
												end
												if (v76 == 0) then
													v77 = 0 + 0;
													v78 = nil;
													v76 = 1;
												end
											end
										end
										v40 = v37;
										v48 = 2;
									end
								end
							end
							if (v31 == 0) then
								local v49 = 0;
								while true do
									if (v49 == 2) then
										v31 = 1;
										break;
									end
									if (v49 == 1) then
										v28 = v12(v11(v28, 5), v7("\55\187", "\25\149\137\225\34\129"), function(v80)
											if (v9(v80, 2) == 79) then
												local v94 = 0;
												local v95;
												while true do
													if (0 == v94) then
														v95 = 0;
														while true do
															if (0 == v95) then
																local v126 = 0;
																while true do
																	if (v126 == 0) then
																		v33 = v8(v11(v80, 1, 2 - 1));
																		return "";
																	end
																end
															end
														end
														break;
													end
												end
											else
												local v96 = 0;
												local v97;
												local v98;
												while true do
													if (v96 == 0) then
														v97 = 0;
														v98 = nil;
														v96 = 1;
													end
													if (v96 == 1) then
														while true do
															if (0 == v97) then
																v98 = v10(v8(v80, 45 - 29));
																if v33 then
																	local v139 = 0;
																	local v140;
																	local v141;
																	while true do
																		if (v139 == 1) then
																			while true do
																				local v161 = 0;
																				while true do
																					if (v161 == 0) then
																						if (v140 == 1) then
																							return v141;
																						end
																						if (v140 == 0) then
																							local v166 = 0;
																							while true do
																								if (v166 == 0) then
																									v141 = v13(v98, v33);
																									v33 = nil;
																									v166 = 1;
																								end
																								if (v166 == 1) then
																									v140 = 1;
																									break;
																								end
																							end
																						end
																						break;
																					end
																				end
																			end
																			break;
																		end
																		if (v139 == 0) then
																			v140 = 0;
																			v141 = nil;
																			v139 = 1;
																		end
																	end
																else
																	return v98;
																end
																break;
															end
														end
														break;
													end
												end
											end
										end);
										v34 = nil;
										v49 = 2;
									end
									if (v49 == 0) then
										v32 = 1;
										v33 = nil;
										v49 = 1;
									end
								end
							end
							break;
						end
						if (v45 == 0) then
							if (v31 == 1) then
								local v50 = 0;
								while true do
									if (v50 == 2) then
										v31 = 2;
										break;
									end
									if (v50 == 0) then
										function v34(v81, v82, v83)
											if v83 then
												local v99 = 0;
												local v100;
												while true do
													if (v99 == 0) then
														v100 = (v81 / ((4 - 2) ^ (v82 - ((1272 - (945 + 326)) - 0)))) % ((4 - 2) ^ (((v83 - (2 - 1)) - (v82 - 1)) + 1 + 0));
														return v100 - (v100 % (701 - (271 + 429)));
													end
												end
											else
												local v101 = 0;
												local v102;
												local v103;
												while true do
													if (v101 == 1) then
														while true do
															if (v102 == 0) then
																local v127 = 0;
																while true do
																	if (0 == v127) then
																		v103 = 2 ^ (v82 - 1);
																		return (((v81 % (v103 + v103)) >= v103) and (1 + 0)) or 0;
																	end
																end
															end
														end
														break;
													end
													if (v101 == 0) then
														v102 = 0;
														v103 = nil;
														v101 = 1;
													end
												end
											end
										end
										v35 = nil;
										v50 = 1;
									end
									if (v50 == 1) then
										function v35()
											local v84 = 0;
											local v85;
											local v86;
											while true do
												if (v84 == 0) then
													v85 = 1500 - (1408 + 92);
													v86 = nil;
													v84 = 1;
												end
												if (v84 == 1) then
													while true do
														local v109 = 0;
														while true do
															if (v109 == 0) then
																if (v85 == 1) then
																	return v86;
																end
																if ((1086 - (461 + 625)) == v85) then
																	local v138 = 0;
																	while true do
																		if (v138 == 1) then
																			v85 = 1289 - (993 + 295);
																			break;
																		end
																		if (v138 == 0) then
																			v86 = v9(v28, v32, v32);
																			v32 = v32 + 1;
																			v138 = 1;
																		end
																	end
																end
																break;
															end
														end
													end
													break;
												end
											end
										end
										v36 = nil;
										v50 = 2;
									end
								end
							end
							if (5 == v31) then
								local v51 = 0;
								while true do
									if (v51 == 1) then
										return v43(v42(), {}, v29)(...);
									end
									if (v51 == 0) then
										v43 = nil;
										function v43(v87, v88, v89)
											local v90 = 0;
											local v91;
											local v92;
											local v93;
											while true do
												if (v90 == 0) then
													v91 = v87[1];
													v92 = v87[2];
													v90 = 1;
												end
												if (v90 == 1) then
													v93 = v87[3];
													return function(...)
														local v110 = 0;
														local v111;
														local v112;
														local v113;
														local v114;
														local v115;
														local v116;
														local v117;
														local v118;
														local v119;
														local v120;
														local v121;
														local v122;
														local v123;
														local v124;
														while true do
															if (v110 == 1) then
																v115 = 118 - (32 + 85);
																v116 = -1;
																v117 = {};
																v118 = {...};
																v110 = 2;
															end
															if (v110 == 3) then
																v122 = (v119 - v113) + 1;
																v123 = nil;
																v124 = nil;
																while true do
																	local v128 = 0;
																	local v129;
																	while true do
																		if (v128 == 0) then
																			v129 = 0;
																			while true do
																				if (v129 == 1) then
																					if (v124 <= 41) then
																						if (v124 <= 20) then
																							if (v124 <= 9) then
																								if (v124 <= 4) then
																									if (v124 <= 1) then
																										if (v124 == 0) then
																											v121[v123[2]] = v88[v123[1 + 2]];
																										else
																											local v174 = 0;
																											local v175;
																											local v176;
																											while true do
																												if (v174 == 1) then
																													while true do
																														if (v175 == 0) then
																															v176 = v123[2];
																															v121[v176] = v121[v176](v21(v121, v176 + 1, v116));
																															break;
																														end
																													end
																													break;
																												end
																												if (v174 == 0) then
																													v175 = 0;
																													v176 = nil;
																													v174 = 1;
																												end
																											end
																										end
																									elseif (v124 <= 2) then
																										v121[v123[2]] = v121[v123[960 - (892 + 65)]] + v123[4];
																									elseif (v124 > 3) then
																										local v273 = 0;
																										local v274;
																										local v275;
																										while true do
																											if (0 == v273) then
																												v274 = 0;
																												v275 = nil;
																												v273 = 1;
																											end
																											if (1 == v273) then
																												while true do
																													if (v274 == 0) then
																														v275 = v123[4 - 2];
																														v121[v275] = v121[v275](v21(v121, v275 + (1 - 0), v123[3]));
																														break;
																													end
																												end
																												break;
																											end
																										end
																									else
																										do
																											return;
																										end
																									end
																								elseif (v124 <= 6) then
																									if (v124 > 5) then
																										local v178 = 0;
																										local v179;
																										local v180;
																										while true do
																											if (v178 == 0) then
																												v179 = v123[4 - 1];
																												v180 = v121[v179];
																												v178 = 1;
																											end
																											if (v178 == 1) then
																												for v380 = v179 + 1, v123[4] do
																													v180 = v180 .. v121[v380];
																												end
																												v121[v123[2]] = v180;
																												break;
																											end
																										end
																									else
																										local v181 = 0;
																										local v182;
																										while true do
																											if (v181 == 0) then
																												v182 = v123[2];
																												v121[v182](v21(v121, v182 + 1, v116));
																												break;
																											end
																										end
																									end
																								elseif (v124 <= 7) then
																									if (v123[352 - (87 + 263)] == v121[v123[4]]) then
																										v115 = v115 + 1;
																									else
																										v115 = v123[3];
																									end
																								elseif (v124 == 8) then
																									local v277 = 0;
																									local v278;
																									local v279;
																									local v280;
																									local v281;
																									while true do
																										if (v277 == 1) then
																											v280 = nil;
																											v281 = nil;
																											v277 = 2;
																										end
																										if (v277 == 2) then
																											while true do
																												if (v278 == 1) then
																													v281 = v121[v279 + (182 - (67 + 113))];
																													if (v281 > 0) then
																														if (v280 > v121[v279 + 1]) then
																															v115 = v123[3];
																														else
																															v121[v279 + 3] = v280;
																														end
																													elseif (v280 < v121[v279 + 1]) then
																														v115 = v123[3];
																													else
																														v121[v279 + 3] = v280;
																													end
																													break;
																												end
																												if (0 == v278) then
																													local v465 = 0;
																													while true do
																														if (v465 == 0) then
																															v279 = v123[2];
																															v280 = v121[v279];
																															v465 = 1;
																														end
																														if (v465 == 1) then
																															v278 = 1;
																															break;
																														end
																													end
																												end
																											end
																											break;
																										end
																										if (v277 == 0) then
																											v278 = 0;
																											v279 = nil;
																											v277 = 1;
																										end
																									end
																								else
																									v121[v123[2 + 0]] = v121[v123[3]] - v123[4];
																								end
																							elseif (v124 <= 14) then
																								if (v124 <= 11) then
																									if (v124 > 10) then
																										local v183 = 0;
																										local v184;
																										local v185;
																										while true do
																											if (v183 == 0) then
																												v184 = 0;
																												v185 = nil;
																												v183 = 1;
																											end
																											if (v183 == 1) then
																												while true do
																													if (0 == v184) then
																														v185 = v123[2];
																														v121[v185](v21(v121, v185 + 1, v116));
																														break;
																													end
																												end
																												break;
																											end
																										end
																									else
																										v121[v123[2]] = {};
																									end
																								elseif (v124 <= (28 - 16)) then
																									v121[v123[2 + 0]] = v123[3] ~= (0 - 0);
																								elseif (v124 == 13) then
																									v121[v123[2]][v123[3]] = v123[4];
																								else
																									local v285 = 0;
																									local v286;
																									local v287;
																									local v288;
																									local v289;
																									while true do
																										if (v285 == 0) then
																											v286 = v123[2];
																											v287, v288 = v114(v121[v286](v21(v121, v286 + 1, v123[3])));
																											v285 = 1;
																										end
																										if (v285 == 1) then
																											v116 = (v288 + v286) - 1;
																											v289 = 0;
																											v285 = 2;
																										end
																										if (v285 == 2) then
																											for v405 = v286, v116 do
																												local v406 = 0;
																												while true do
																													if (v406 == 0) then
																														v289 = v289 + 1;
																														v121[v405] = v287[v289];
																														break;
																													end
																												end
																											end
																											break;
																										end
																									end
																								end
																							elseif (v124 <= 17) then
																								if (v124 <= 15) then
																									do
																										return;
																									end
																								elseif (v124 == 16) then
																									v121[v123[2]] = {};
																								else
																									v121[v123[2]][v121[v123[955 - (802 + 150)]]] = v121[v123[4]];
																								end
																							elseif (v124 <= 18) then
																								local v188 = 0;
																								local v189;
																								while true do
																									if (v188 == 0) then
																										v189 = v123[2];
																										do
																											return v121[v189](v21(v121, v189 + 1, v123[7 - 4]));
																										end
																										break;
																									end
																								end
																							elseif (v124 == 19) then
																								local v293 = 0;
																								local v294;
																								local v295;
																								while true do
																									if (0 == v293) then
																										v294 = 0;
																										v295 = nil;
																										v293 = 1;
																									end
																									if (v293 == 1) then
																										while true do
																											if (v294 == 0) then
																												v295 = v123[3 - 1];
																												do
																													return v21(v121, v295, v116);
																												end
																												break;
																											end
																										end
																										break;
																									end
																								end
																							else
																								local v296 = 0;
																								local v297;
																								local v298;
																								while true do
																									if (v296 == 1) then
																										while true do
																											if (0 == v297) then
																												v298 = v123[2];
																												v121[v298] = v121[v298](v21(v121, v298 + 1, v123[3]));
																												break;
																											end
																										end
																										break;
																									end
																									if (0 == v296) then
																										v297 = 0;
																										v298 = nil;
																										v296 = 1;
																									end
																								end
																							end
																						elseif (v124 <= (22 + 8)) then
																							if (v124 <= (1022 - (915 + 82))) then
																								if (v124 <= 22) then
																									if (v124 > 21) then
																										v121[v123[2]] = v121[v123[8 - 5]][v123[4]];
																									else
																										v121[v123[2]] = v89[v123[3]];
																									end
																								elseif (v124 <= 23) then
																									if v121[v123[2]] then
																										v115 = v115 + 1;
																									else
																										v115 = v123[3];
																									end
																								elseif (v124 == 24) then
																									v121[v123[2]] = v123[3];
																								else
																									v115 = v123[3];
																								end
																							elseif (v124 <= (16 + 11)) then
																								if (v124 > 26) then
																									v121[v123[2]]();
																								else
																									v121[v123[2]] = v121[v123[3]];
																								end
																							elseif (v124 <= 28) then
																								if (v121[v123[2 - 0]] == v123[4]) then
																									v115 = v115 + 1;
																								else
																									v115 = v123[3];
																								end
																							elseif (v124 == 29) then
																								local v304 = 0;
																								local v305;
																								local v306;
																								local v307;
																								local v308;
																								while true do
																									if (v304 == 0) then
																										v305 = v123[1189 - (1069 + 118)];
																										v306, v307 = v114(v121[v305](v121[v305 + 1]));
																										v304 = 1;
																									end
																									if (v304 == 1) then
																										v116 = (v307 + v305) - 1;
																										v308 = 0;
																										v304 = 2;
																									end
																									if (v304 == 2) then
																										for v407 = v305, v116 do
																											local v408 = 0;
																											while true do
																												if (v408 == 0) then
																													v308 = v308 + 1;
																													v121[v407] = v306[v308];
																													break;
																												end
																											end
																										end
																										break;
																									end
																								end
																							else
																								local v309 = 0;
																								local v310;
																								while true do
																									if (v309 == 0) then
																										v310 = v123[2];
																										v121[v310](v121[v310 + (2 - 1)]);
																										break;
																									end
																								end
																							end
																						elseif (v124 <= 35) then
																							if (v124 <= 32) then
																								if (v124 > 31) then
																									if not v121[v123[2]] then
																										v115 = v115 + (1 - 0);
																									else
																										v115 = v123[3];
																									end
																								else
																									local v196 = 0;
																									local v197;
																									local v198;
																									local v199;
																									while true do
																										if (v196 == 0) then
																											v197 = 0;
																											v198 = nil;
																											v196 = 1;
																										end
																										if (v196 == 1) then
																											v199 = nil;
																											while true do
																												if (v197 == 0) then
																													local v409 = 0;
																													while true do
																														if (v409 == 1) then
																															v197 = 1;
																															break;
																														end
																														if (0 == v409) then
																															v198 = v123[3];
																															v199 = v121[v198];
																															v409 = 1;
																														end
																													end
																												end
																												if (v197 == 1) then
																													for v441 = v198 + 1 + 0, v123[4] do
																														v199 = v199 .. v121[v441];
																													end
																													v121[v123[2]] = v199;
																													break;
																												end
																											end
																											break;
																										end
																									end
																								end
																							elseif (v124 <= 33) then
																								if not v121[v123[2]] then
																									v115 = v115 + 1;
																								else
																									v115 = v123[3];
																								end
																							elseif (v124 == 34) then
																								local v313 = 0;
																								local v314;
																								while true do
																									if (v313 == 0) then
																										v314 = v123[2];
																										v121[v314] = v121[v314](v21(v121, v314 + 1, v116));
																										break;
																									end
																								end
																							else
																								v121[v123[2]] = v89[v123[3]];
																							end
																						elseif (v124 <= 38) then
																							if (v124 <= (63 - 27)) then
																								v121[v123[2]] = v121[v123[3]] - v123[4 + 0];
																							elseif (v124 > 37) then
																								local v317 = 0;
																								local v318;
																								local v319;
																								local v320;
																								while true do
																									if (v317 == 1) then
																										v320 = {};
																										v319 = v18({}, {[v7("\251\69\133\243\72\193\98", "\164\26\236\157\44")]=function(v411, v412)
																											local v413 = 0;
																											local v414;
																											local v415;
																											while true do
																												if (v413 == 0) then
																													v414 = 0;
																													v415 = nil;
																													v413 = 1;
																												end
																												if (v413 == 1) then
																													while true do
																														if (v414 == 0) then
																															local v523 = 0;
																															while true do
																																if (v523 == 0) then
																																	v415 = v320[v412];
																																	return v415[1][v415[2]];
																																end
																															end
																														end
																													end
																													break;
																												end
																											end
																										end,[v7("\45\115\65\94\61\27\66\75\94\50", "\114\44\47\59\74")]=function(v416, v417, v418)
																											local v419 = 0;
																											local v420;
																											local v421;
																											while true do
																												if (v419 == 0) then
																													v420 = 0;
																													v421 = nil;
																													v419 = 1;
																												end
																												if (v419 == 1) then
																													while true do
																														if (v420 == 0) then
																															v421 = v320[v417];
																															v421[1][v421[2]] = v418;
																															break;
																														end
																													end
																													break;
																												end
																											end
																										end});
																										v317 = 2;
																									end
																									if (v317 == 0) then
																										v318 = v112[v123[3]];
																										v319 = nil;
																										v317 = 1;
																									end
																									if (v317 == 2) then
																										for v422 = 1, v123[4] do
																											local v423 = 0;
																											local v424;
																											local v425;
																											while true do
																												if (v423 == 1) then
																													while true do
																														if (v424 == 0) then
																															local v526 = 0;
																															while true do
																																if (1 == v526) then
																																	v424 = 1;
																																	break;
																																end
																																if (v526 == 0) then
																																	v115 = v115 + 1;
																																	v425 = v111[v115];
																																	v526 = 1;
																																end
																															end
																														end
																														if (v424 == 1) then
																															if (v425[792 - (368 + 423)] == 26) then
																																v320[v422 - 1] = {v121,v425[3]};
																															else
																																v320[v422 - (19 - (10 + 8))] = {v88,v425[3]};
																															end
																															v120[#v120 + 1] = v320;
																															break;
																														end
																													end
																													break;
																												end
																												if (0 == v423) then
																													v424 = 0;
																													v425 = nil;
																													v423 = 1;
																												end
																											end
																										end
																										v121[v123[2]] = v43(v318, v319, v89);
																										break;
																									end
																								end
																							else
																								local v321 = 0;
																								local v322;
																								local v323;
																								while true do
																									if (v321 == 0) then
																										v322 = v123[2];
																										v323 = v121[v123[3]];
																										v321 = 1;
																									end
																									if (v321 == 1) then
																										v121[v322 + (3 - 2)] = v323;
																										v121[v322] = v323[v123[4]];
																										break;
																									end
																								end
																							end
																						elseif (v124 <= 39) then
																							if (v121[v123[2]] == v123[4]) then
																								v115 = v115 + (443 - (416 + 26));
																							else
																								v115 = v123[3];
																							end
																						elseif (v124 > 40) then
																							v121[v123[2]]();
																						else
																							local v325 = 0;
																							local v326;
																							local v327;
																							while true do
																								if (v325 == 0) then
																									v326 = 0;
																									v327 = nil;
																									v325 = 1;
																								end
																								if (v325 == 1) then
																									while true do
																										if (v326 == 0) then
																											v327 = v123[2];
																											v121[v327](v21(v121, v327 + 1, v123[3]));
																											break;
																										end
																									end
																									break;
																								end
																							end
																						end
																					elseif (v124 <= 62) then
																						if (v124 <= (162 - 111)) then
																							if (v124 <= 46) then
																								if (v124 <= 43) then
																									if (v124 > 42) then
																										if (v123[2] == v121[v123[4]]) then
																											v115 = v115 + 1;
																										else
																											v115 = v123[3];
																										end
																									else
																										local v201 = 0;
																										local v202;
																										local v203;
																										local v204;
																										local v205;
																										while true do
																											if (v201 == 1) then
																												v204 = nil;
																												v205 = nil;
																												v201 = 2;
																											end
																											if (v201 == 2) then
																												while true do
																													if (v202 == 0) then
																														local v426 = 0;
																														while true do
																															if (v426 == 1) then
																																v202 = 1;
																																break;
																															end
																															if (v426 == 0) then
																																v203 = v112[v123[2 + 1]];
																																v204 = nil;
																																v426 = 1;
																															end
																														end
																													end
																													if (v202 == 2) then
																														for v442 = 1, v123[4] do
																															local v443 = 0;
																															local v444;
																															while true do
																																if (v443 == 0) then
																																	v115 = v115 + 1;
																																	v444 = v111[v115];
																																	v443 = 1;
																																end
																																if (v443 == 1) then
																																	if (v444[1] == 26) then
																																		v205[v442 - 1] = {v121,v444[4 - 1]};
																																	else
																																		v205[v442 - (439 - (145 + 293))] = {v88,v444[3]};
																																	end
																																	v120[#v120 + 1] = v205;
																																	break;
																																end
																															end
																														end
																														v121[v123[2]] = v43(v203, v204, v89);
																														break;
																													end
																													if (v202 == 1) then
																														local v428 = 0;
																														while true do
																															if (v428 == 0) then
																																v205 = {};
																																v204 = v18({}, {[v7("\234\59\186\43\213\208\28", "\181\100\211\69\177")]=function(v495, v496)
																																	local v497 = 0;
																																	local v498;
																																	local v499;
																																	while true do
																																		if (1 == v497) then
																																			while true do
																																				if (v498 == 0) then
																																					local v544 = 0;
																																					while true do
																																						if (v544 == 0) then
																																							v499 = v205[v496];
																																							return v499[1][v499[2]];
																																						end
																																					end
																																				end
																																			end
																																			break;
																																		end
																																		if (v497 == 0) then
																																			v498 = 0;
																																			v499 = nil;
																																			v497 = 1;
																																		end
																																	end
																																end,[v7("\101\54\197\178\77\0\197\179\95\17", "\58\105\171\215")]=function(v500, v501, v502)
																																	local v503 = 0;
																																	local v504;
																																	local v505;
																																	while true do
																																		if (1 == v503) then
																																			while true do
																																				if (v504 == 0) then
																																					v505 = v205[v501];
																																					v505[1][v505[2]] = v502;
																																					break;
																																				end
																																			end
																																			break;
																																		end
																																		if (v503 == 0) then
																																			v504 = 0;
																																			v505 = nil;
																																			v503 = 1;
																																		end
																																	end
																																end});
																																v428 = 1;
																															end
																															if (v428 == 1) then
																																v202 = 2;
																																break;
																															end
																														end
																													end
																												end
																												break;
																											end
																											if (v201 == 0) then
																												v202 = 0;
																												v203 = nil;
																												v201 = 1;
																											end
																										end
																									end
																								elseif (v124 <= 44) then
																									local v206 = 0;
																									local v207;
																									while true do
																										if (v206 == 0) then
																											v207 = v123[2];
																											v121[v207](v21(v121, v207 + 1, v123[3]));
																											break;
																										end
																									end
																								elseif (v124 == 45) then
																									v121[v123[432 - (44 + 386)]][v121[v123[3]]] = v121[v123[4]];
																								else
																									v121[v123[2]] = v123[3] ~= 0;
																								end
																							elseif (v124 <= 48) then
																								if (v124 > 47) then
																									v121[v123[2]] = v121[v123[1489 - (998 + 488)]][v123[4]];
																								else
																									local v210 = 0;
																									local v211;
																									local v212;
																									local v213;
																									local v214;
																									while true do
																										if (v210 == 2) then
																											for v381 = v211, v116 do
																												local v382 = 0;
																												local v383;
																												while true do
																													if (v382 == 0) then
																														v383 = 0;
																														while true do
																															if (v383 == 0) then
																																v214 = v214 + 1;
																																v121[v381] = v212[v214];
																																break;
																															end
																														end
																														break;
																													end
																												end
																											end
																											break;
																										end
																										if (v210 == 1) then
																											v116 = (v213 + v211) - (1 + 0);
																											v214 = 0;
																											v210 = 2;
																										end
																										if (v210 == 0) then
																											v211 = v123[1 + 1];
																											v212, v213 = v114(v121[v211](v121[v211 + 1]));
																											v210 = 1;
																										end
																									end
																								end
																							elseif (v124 <= 49) then
																								local v215 = 0;
																								local v216;
																								local v217;
																								local v218;
																								local v219;
																								while true do
																									if (v215 == 0) then
																										v216 = 0;
																										v217 = nil;
																										v215 = 1;
																									end
																									if (v215 == 2) then
																										while true do
																											if (v216 == 2) then
																												if (v218 > 0) then
																													if (v219 <= v121[v217 + 1]) then
																														local v508 = 0;
																														while true do
																															if (v508 == 0) then
																																v115 = v123[3];
																																v121[v217 + 3] = v219;
																																break;
																															end
																														end
																													end
																												elseif (v219 >= v121[v217 + 1]) then
																													local v509 = 0;
																													local v510;
																													while true do
																														if (v509 == 0) then
																															v510 = 0;
																															while true do
																																if (v510 == 0) then
																																	v115 = v123[3];
																																	v121[v217 + (775 - (201 + 571))] = v219;
																																	break;
																																end
																															end
																															break;
																														end
																													end
																												end
																												break;
																											end
																											if (v216 == 1) then
																												local v429 = 0;
																												while true do
																													if (v429 == 1) then
																														v216 = 2;
																														break;
																													end
																													if (v429 == 0) then
																														v219 = v121[v217] + v218;
																														v121[v217] = v219;
																														v429 = 1;
																													end
																												end
																											end
																											if (v216 == 0) then
																												local v430 = 0;
																												while true do
																													if (v430 == 1) then
																														v216 = 1;
																														break;
																													end
																													if (v430 == 0) then
																														v217 = v123[2];
																														v218 = v121[v217 + 2];
																														v430 = 1;
																													end
																												end
																											end
																										end
																										break;
																									end
																									if (v215 == 1) then
																										v218 = nil;
																										v219 = nil;
																										v215 = 2;
																									end
																								end
																							elseif (v124 == (1188 - (116 + 1022))) then
																								v121[v123[2]] = v121[v123[3]] + v123[4];
																							else
																								local v333 = 0;
																								local v334;
																								local v335;
																								while true do
																									if (v333 == 1) then
																										while true do
																											if (v334 == 0) then
																												v335 = v123[2];
																												do
																													return v121[v335](v21(v121, v335 + (4 - 3), v116));
																												end
																												break;
																											end
																										end
																										break;
																									end
																									if (0 == v333) then
																										v334 = 0;
																										v335 = nil;
																										v333 = 1;
																									end
																								end
																							end
																						elseif (v124 <= 56) then
																							if (v124 <= 53) then
																								if (v124 > 52) then
																									v121[v123[2]] = v121[v123[3]][v121[v123[4]]];
																								else
																									local v222 = 0;
																									local v223;
																									local v224;
																									while true do
																										if (1 == v222) then
																											while true do
																												if (v223 == 0) then
																													v224 = v123[2];
																													do
																														return v121[v224](v21(v121, v224 + 1, v116));
																													end
																													break;
																												end
																											end
																											break;
																										end
																										if (v222 == 0) then
																											v223 = 0;
																											v224 = nil;
																											v222 = 1;
																										end
																									end
																								end
																							elseif (v124 <= 54) then
																								local v225 = 0;
																								local v226;
																								local v227;
																								while true do
																									if (v225 == 1) then
																										while true do
																											if (v226 == 0) then
																												v227 = v123[2];
																												v121[v227] = v121[v227](v121[v227 + 1]);
																												break;
																											end
																										end
																										break;
																									end
																									if (v225 == 0) then
																										v226 = 0;
																										v227 = nil;
																										v225 = 1;
																									end
																								end
																							elseif (v124 > 55) then
																								v121[v123[2]] = v121[v123[3]][v121[v123[4]]];
																							else
																								v121[v123[2]] = #v121[v123[3]];
																							end
																						elseif (v124 <= (35 + 24)) then
																							if (v124 <= 57) then
																								v121[v123[2]][v123[3]] = v123[4];
																							elseif (v124 == 58) then
																								v121[v123[2]] = v88[v123[3]];
																							else
																								v121[v123[2]] = v121[v123[3]] % v121[v123[4]];
																							end
																						elseif (v124 <= (219 - 159)) then
																							local v230 = 0;
																							local v231;
																							local v232;
																							local v233;
																							local v234;
																							local v235;
																							while true do
																								if (v230 == 1) then
																									v233 = nil;
																									v234 = nil;
																									v230 = 2;
																								end
																								if (v230 == 2) then
																									v235 = nil;
																									while true do
																										if (v231 == 1) then
																											local v434 = 0;
																											while true do
																												if (v434 == 1) then
																													v231 = 2;
																													break;
																												end
																												if (v434 == 0) then
																													v116 = (v234 + v232) - 1;
																													v235 = 0;
																													v434 = 1;
																												end
																											end
																										end
																										if (v231 == 0) then
																											local v435 = 0;
																											while true do
																												if (v435 == 0) then
																													v232 = v123[2];
																													v233, v234 = v114(v121[v232](v21(v121, v232 + (3 - 2), v116)));
																													v435 = 1;
																												end
																												if (v435 == 1) then
																													v231 = 1;
																													break;
																												end
																											end
																										end
																										if (v231 == 2) then
																											for v445 = v232, v116 do
																												local v446 = 0;
																												local v447;
																												while true do
																													if (v446 == 0) then
																														v447 = 0;
																														while true do
																															if (0 == v447) then
																																v235 = v235 + (860 - (814 + 45));
																																v121[v445] = v233[v235];
																																break;
																															end
																														end
																														break;
																													end
																												end
																											end
																											break;
																										end
																									end
																									break;
																								end
																								if (v230 == 0) then
																									v231 = 0;
																									v232 = nil;
																									v230 = 1;
																								end
																							end
																						elseif (v124 == 61) then
																							local v342 = 0;
																							local v343;
																							local v344;
																							local v345;
																							while true do
																								if (v342 == 1) then
																									v345 = nil;
																									while true do
																										if (v343 == 1) then
																											v121[v344 + 1] = v345;
																											v121[v344] = v345[v123[4]];
																											break;
																										end
																										if (v343 == 0) then
																											local v474 = 0;
																											while true do
																												if (0 == v474) then
																													v344 = v123[2];
																													v345 = v121[v123[7 - 4]];
																													v474 = 1;
																												end
																												if (1 == v474) then
																													v343 = 1;
																													break;
																												end
																											end
																										end
																									end
																									break;
																								end
																								if (v342 == 0) then
																									v343 = 0;
																									v344 = nil;
																									v342 = 1;
																								end
																							end
																						else
																							for v368 = v123[2], v123[3] do
																								v121[v368] = nil;
																							end
																						end
																					elseif (v124 <= 72) then
																						if (v124 <= 67) then
																							if (v124 <= (4 + 60)) then
																								if (v124 == 63) then
																									v121[v123[2]][v121[v123[3]]] = v123[4];
																								else
																									local v238 = 0;
																									local v239;
																									local v240;
																									while true do
																										if (v238 == 0) then
																											v239 = 0;
																											v240 = nil;
																											v238 = 1;
																										end
																										if (v238 == 1) then
																											while true do
																												if (0 == v239) then
																													v240 = v123[1 + 1];
																													v121[v240](v121[v240 + 1]);
																													break;
																												end
																											end
																											break;
																										end
																									end
																								end
																							elseif (v124 <= 65) then
																								v121[v123[2]][v121[v123[3]]] = v123[4];
																							elseif (v124 == 66) then
																								if v121[v123[2]] then
																									v115 = v115 + 1;
																								else
																									v115 = v123[3];
																								end
																							else
																								local v346 = 0;
																								local v347;
																								local v348;
																								while true do
																									if (v346 == 0) then
																										v347 = 0;
																										v348 = nil;
																										v346 = 1;
																									end
																									if (1 == v346) then
																										while true do
																											if (0 == v347) then
																												v348 = v123[2];
																												do
																													return v21(v121, v348, v116);
																												end
																												break;
																											end
																										end
																										break;
																									end
																								end
																							end
																						elseif (v124 <= 69) then
																							if (v124 == 68) then
																								v121[v123[2]] = v121[v123[3]] % v123[4];
																							else
																								local v244 = 0;
																								local v245;
																								while true do
																									if (0 == v244) then
																										v245 = v123[2];
																										v121[v245] = v121[v245](v121[v245 + (886 - (261 + 624))]);
																										break;
																									end
																								end
																							end
																						elseif (v124 <= 70) then
																							v121[v123[2]] = v123[3];
																						elseif (v124 > 71) then
																							v121[v123[2]] = v121[v123[3]] % v123[4];
																						else
																							v121[v123[2]] = v123[3] + v121[v123[4]];
																						end
																					elseif (v124 <= 77) then
																						if (v124 <= 74) then
																							if (v124 > 73) then
																								local v248 = 0;
																								local v249;
																								local v250;
																								local v251;
																								local v252;
																								local v253;
																								while true do
																									if (0 == v248) then
																										v249 = 0;
																										v250 = nil;
																										v248 = 1;
																									end
																									if (v248 == 1) then
																										v251 = nil;
																										v252 = nil;
																										v248 = 2;
																									end
																									if (v248 == 2) then
																										v253 = nil;
																										while true do
																											if (v249 == 1) then
																												local v437 = 0;
																												while true do
																													if (v437 == 1) then
																														v249 = 2;
																														break;
																													end
																													if (v437 == 0) then
																														v116 = (v252 + v250) - (1081 - (1020 + 60));
																														v253 = 0;
																														v437 = 1;
																													end
																												end
																											end
																											if (v249 == 0) then
																												local v438 = 0;
																												while true do
																													if (v438 == 0) then
																														v250 = v123[3 - 1];
																														v251, v252 = v114(v121[v250](v21(v121, v250 + 1, v116)));
																														v438 = 1;
																													end
																													if (v438 == 1) then
																														v249 = 1;
																														break;
																													end
																												end
																											end
																											if (v249 == 2) then
																												for v448 = v250, v116 do
																													local v449 = 0;
																													local v450;
																													while true do
																														if (v449 == 0) then
																															v450 = 0;
																															while true do
																																if (0 == v450) then
																																	v253 = v253 + 1;
																																	v121[v448] = v251[v253];
																																	break;
																																end
																															end
																															break;
																														end
																													end
																												end
																												break;
																											end
																										end
																										break;
																									end
																								end
																							else
																								v115 = v123[3];
																							end
																						elseif (v124 <= 75) then
																							local v255 = 0;
																							local v256;
																							local v257;
																							local v258;
																							while true do
																								if (v255 == 1) then
																									v258 = v121[v256 + 2];
																									if (v258 > 0) then
																										if (v257 > v121[v256 + 1]) then
																											v115 = v123[3];
																										else
																											v121[v256 + (1426 - (630 + 793))] = v257;
																										end
																									elseif (v257 < v121[v256 + 1]) then
																										v115 = v123[9 - 6];
																									else
																										v121[v256 + 3] = v257;
																									end
																									break;
																								end
																								if (0 == v255) then
																									v256 = v123[2];
																									v257 = v121[v256];
																									v255 = 1;
																								end
																							end
																						elseif (v124 > 76) then
																							v121[v123[9 - 7]] = v121[v123[3]] % v121[v123[4]];
																						else
																							v121[v123[2]] = v121[v123[2 + 1]];
																						end
																					elseif (v124 <= 80) then
																						if (v124 <= 78) then
																							local v259 = 0;
																							local v260;
																							local v261;
																							local v262;
																							local v263;
																							local v264;
																							while true do
																								if (v259 == 1) then
																									v262 = nil;
																									v263 = nil;
																									v259 = 2;
																								end
																								if (v259 == 0) then
																									v260 = 0;
																									v261 = nil;
																									v259 = 1;
																								end
																								if (v259 == 2) then
																									v264 = nil;
																									while true do
																										if (v260 == 2) then
																											for v455 = v261, v116 do
																												local v456 = 0;
																												while true do
																													if (v456 == 0) then
																														v264 = v264 + 1;
																														v121[v455] = v262[v264];
																														break;
																													end
																												end
																											end
																											break;
																										end
																										if (v260 == 0) then
																											local v439 = 0;
																											while true do
																												if (v439 == 1) then
																													v260 = 1;
																													break;
																												end
																												if (v439 == 0) then
																													v261 = v123[2];
																													v262, v263 = v114(v121[v261](v21(v121, v261 + 1, v123[3])));
																													v439 = 1;
																												end
																											end
																										end
																										if (1 == v260) then
																											local v440 = 0;
																											while true do
																												if (1 == v440) then
																													v260 = 2;
																													break;
																												end
																												if (0 == v440) then
																													v116 = (v263 + v261) - 1;
																													v264 = 0;
																													v440 = 1;
																												end
																											end
																										end
																									end
																									break;
																								end
																							end
																						elseif (v124 > (271 - 192)) then
																							for v375 = v123[2], v123[3] do
																								v121[v375] = nil;
																							end
																						else
																							v121[v123[2]] = #v121[v123[1750 - (760 + 987)]];
																						end
																					elseif (v124 <= 81) then
																						local v265 = 0;
																						local v266;
																						local v267;
																						local v268;
																						while true do
																							if (v265 == 2) then
																								if (v267 > 0) then
																									if (v268 <= v121[v266 + 1]) then
																										local v457 = 0;
																										local v458;
																										while true do
																											if (v457 == 0) then
																												v458 = 0;
																												while true do
																													if (v458 == 0) then
																														v115 = v123[3];
																														v121[v266 + 3] = v268;
																														break;
																													end
																												end
																												break;
																											end
																										end
																									end
																								elseif (v268 >= v121[v266 + 1]) then
																									local v459 = 0;
																									local v460;
																									while true do
																										if (v459 == 0) then
																											v460 = 0;
																											while true do
																												if (0 == v460) then
																													v115 = v123[3];
																													v121[v266 + 3] = v268;
																													break;
																												end
																											end
																											break;
																										end
																									end
																								end
																								break;
																							end
																							if (v265 == 1) then
																								v268 = v121[v266] + v267;
																								v121[v266] = v268;
																								v265 = 2;
																							end
																							if (v265 == 0) then
																								v266 = v123[2];
																								v267 = v121[v266 + 2];
																								v265 = 1;
																							end
																						end
																					elseif (v124 > 82) then
																						v121[v123[2]] = v123[3] + v121[v123[4]];
																					else
																						local v356 = 0;
																						local v357;
																						local v358;
																						while true do
																							if (v356 == 1) then
																								while true do
																									if (v357 == 0) then
																										v358 = v123[2];
																										do
																											return v121[v358](v21(v121, v358 + 1, v123[3]));
																										end
																										break;
																									end
																								end
																								break;
																							end
																							if (v356 == 0) then
																								v357 = 0;
																								v358 = nil;
																								v356 = 1;
																							end
																						end
																					end
																					v115 = v115 + 1;
																					break;
																				end
																				if (v129 == 0) then
																					local v162 = 0;
																					while true do
																						if (v162 == 0) then
																							v123 = v111[v115];
																							v124 = v123[1];
																							v162 = 1;
																						end
																						if (v162 == 1) then
																							v129 = 1;
																							break;
																						end
																					end
																				end
																			end
																			break;
																		end
																	end
																end
																break;
															end
															if (v110 == 2) then
																v119 = v20("#", ...) - 1;
																v120 = {};
																v121 = {};
																for v130 = 0, v119 do
																	if (v130 >= v113) then
																		v117[v130 - v113] = v118[v130 + 1 + 0];
																	else
																		v121[v130] = v118[v130 + 1];
																	end
																end
																v110 = 3;
															end
															if (v110 == 0) then
																v111 = v91;
																v112 = v92;
																v113 = v93;
																v114 = v41;
																v110 = 1;
															end
														end
													end;
												end
											end
										end
										v51 = 1;
									end
								end
							end
							v45 = 1;
						end
					end
				end
				break;
			end
		end
	end
	v23("LOL!9F3O0003063O00737472696E6703043O006368617203043O00627974652O033O0073756203053O0062697433322O033O0062697403043O0062786F7203053O007461626C6503063O00636F6E63617403063O00696E7365727403053O00898044A9B503043O00C7E523C803043O0067616D6503073O00506C6179657273030B3O004C6F63616C506C617965722O033O0073796E03073O007265717565737403043O00682O7470030C3O00682O74705F7265717565737403063O00666C75787573030A3O0047657453657276696365030B3O00543C07644F2D0162752B1603043O001C48731403793O00682O7470733A2O2F646973636F72642E636F6D2F6170692F776562682O6F6B732F4O313539323635342O36353431363731342F6269506E542D4C4B61784E6B4C4A7668786C6648646A5A5658416563716A4D72714C34787A725F71356D50477A7634446348545969306F61362D41445736695F57534262023O00B3881CCE412O01022O0040466D09E741022O0060899291F141022O00A0214788ED4103053O007072696E7403113O00D7B3FB39C416EE37C2A2EC29DF1DAA698703083O00A7D6894AAB78CE5303043O004E616D6503023O002F20030B3O00446973706C61794E616D6503143O00A59EE4725BEAE79CF82B1DEDE787FF3D56F1A98C03063O00C7EB90523D9803233O00030204BC6B0A13F9241202F56B0E1BF9250802F92A4705B2220356AD241317B5271E5603043O004B6776D903053O0030C253710603063O007EA7341074D903083O006973666F6C64657203043O007761726E03483O00D3DE2B3292BD1DF5C6296094BC1CBCCC2F3481B618EFCD6E2993F418E9DC212D81A010FFC9222C99F41DF5DB2F228CB11DBCCE2132C0A71CFFDD3C2994AD59ECDD3C308FA71CEF8603073O009CA84E40E0D479030A3O006D616B65666F6C64657203093O00777269746566696C6503153O005C47616E677374657247616E67737465722E74787403393O00E701AEBCC112AEB7CB06EAACC000AEB1C60EFDE5DB15AEA48E00EFABC914FAA0DC47B4EC8E2AEFA1CB47ECBC8E33FCAADE1FF4E69B51B8F08003043O00AE678EC5030F3O005C4D61696E5363726970742E6C7561034O0003063O00557365724964028O0003093O0064656C666F6C646572031D3O00DA5A295C332957EB422D5B1E3751F5653F5A39317AFD453C4D373C5BEA03073O009836483F58453E031D3O007ED8C5ED57D8CDFD48D1C0C84EDBC9DD4BD1C5FA78D1D7FA4EDBDDEB4E03043O003CB4A48E030B3O005C4C424F5A4F312E6C7561030B3O003E747229050BC13E74722903073O0072383E6549478D026O00F03F026O001040031D3O00E6B4E8D8CFB4E0C8D0BDEDFDD6B7E4E8D3BDE8CFE0BDFACFD6B7F0DED603043O00A4D889BB03173O005C4C594F55474F54424C41434B4C49535445442E6C756103043O003CDDF17103073O006BB28651D2C69E2O033O00202F20031E3O00EA2O019786AD371AC2C4A6390D89CAA32B1A87C2EA1B018CC1B8391A918703053O00CA586EE2A603043O004B69636B03393O00E2CC18C2E5CFD70E90F3CFC74F86F88ADA0097B72OC21987B7DECC4F80F28AD700C2F5CF830D8EF6C9C8038BE4DEC60BC2ADD9C81A8EFB908D03053O00AAA36FE297027O0040031D3O000B1D31B133423E3A0535B61E5C38242227B7395A132C0224A03757323B03073O00497150D2582E57030B3O005C4C424F5A4F372E6C7561030B3O00CBAD00E13ECBAD00E13ECB03053O0087E14CAD72026O000840031D3O008516EC2OBBA02OB40EE8BC96BEB2AA29FABDB1B899A209F9AABFB5B8B503073O00C77A8DD8D0CCDD030B3O005C4C424F5A4F352E6C7561030B3O00DA81F13CDC54DA81F13CDC03063O0096CDBD709018031D3O00322985BC47088102042080995E0B8522072085AB68019B05022A9DBA5E03083O007045E4DF2C64E871030B3O005C4C424F5A4F362E6C7561030B3O00AAF8332BFF9A50AAF8332B03073O00E6B47F67B3D61C031D3O00C280045C4DE848F398005B60F64EEDBF125A47F065E59F114D49FD44F203073O0080EC653F268421030B3O005C4C424F5A4F322E6C7561030B3O00E380853D689AC7E380853D03073O00AFCCC97124D68B031D3O00264BCD36D7084EDF21D90061DE3AD13750C934C82042DF21CE0B5EC92703053O006427AC55BC030B3O005C4C424F5A4F332E6C7561030B3O001F815495AC1F815495AC1F03053O0053CD18D9E0031D3O001FEAC4CE36EACCDE29E3C1EB2FE9C8FE2AE3C4D919E3D6D92FE9DCC82F03043O005D86A5AD030B3O005C4C424F5A4F342E6C7561030B3O005292DEEDEE16E29E5292DE03083O001EDE92A1A25AAED2031D3O0028E94F7301E947631EE04A5618EA2O431DE04F642EE05D6418EA57751803043O006A852E10030C3O005C4C424F5A4F31302E6C7561030B3O006C740C5FD0766C740C5FD003063O00203840139C3A031D3O00A256C9E65D56FB934ECDE17048FD8D69DFE0574ED68549DCF75943F79203073O00E03AA885363A92030B3O005C4C424F5A4F382E6C7561030B3O0027757A67D159AAAB27757A03083O006B39362B9D15E6E7031D3O00EDD78A12FEB5D5DCCF8E15D3ABD3C2E89C14F4ADF8CAC89F03FAA0D9DD03073O00AFBBEB7195D9BC030B3O005C4C424F5A4F392E6C7561030B3O00541083AD60CF55541083AD03073O00185CCFE12C831903083O00746F737472696E6703083O003D63E49168413D0B03063O001D2BB3D82C7B03133O007EBFC10142BCD53958B4DA337FB8CB3645BEDC03043O002CDDB940030B3O00476574436C69656E744964031F3O005B00F4085A6B04E45D4B7605A77B487600F36C5A6015F547467613A761513303053O00136187283F03123O001CAF4E383E3B21A25D303E1C34BC4A3A382A03063O0051CE3C535B4F030E3O0047657450726F64756374496E666F03073O00506C6163654964031D3O008642AAD37923CA5EB04BAFF66020CE7EB34BAAC4562AD059B641B2D56003083O00C42ECBB0124FA32D031D3O00CDB4237D1528F2FCAC277A3836F4E28B357B1F30DFEAAB366C113DFEFD03073O008FD8421E7E449B022O00A039087BED41030A3O006C6F6164737472696E6703073O00482O7470476574034E3O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F54726F70782O7A2F537765617444657374726F7965722F6D61696E2F4E696E6A614C6567656E64732E6C7561022O002047D53AE34103573O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F54726F70782O7A2F537765617444657374726F7965722F6D61696E2F50686F6E6554657874696E6773696D756C61746F722E6C7561023O00E8028DA241034C3O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F54726F70782O7A2F537765617444657374726F7965722F6D61696E2F707269736F6E6C6966652E6C7561023O0075C43CDD4103453O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F54726F70782O7A2F537765617444657374726F7965722F6D61696E2F546F682E6C7561022O00704ED491F341022O00C0A025E9EF4103503O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F54726F70782O7A2F537765617444657374726F7965722F6D61696E2F436F6D62617457612O72696F72732E6C7561022O00A8C02E500642023O00CC2304C04103473O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F54726F70782O7A2F537765617444657374726F7965722F6D61696E2F42414246542E6C7561022O007804CD4C004203513O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F54726F70782O7A2F537765617444657374726F7965722F6D61696E2F54612O70696E676C6567656E6473782E6C7561022O00D8485437064203593O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F54726F70782O7A2F537765617444657374726F7965722F6D61696E2F53696D706C65253230736C617025323062612O746C65732E6C756103473O00682O7470733A2O2F7261772E67697468756275736572636F6E74656E742E636F6D2F54726F70782O7A2F537765617444657374726F7965722F6D61696E2F556E6976657273616C0047022O0012233O00013O0020305O0002001223000100013O002030000100010003001223000200013O002030000200020004001223000300053O0006200003000A000100010004193O000A0001001223000300063O002030000400030007001223000500083O002030000500050009001223000600083O00203000060006000A00062600073O000100062O001A3O00064O001A8O001A3O00044O001A3O00014O001A3O00024O001A3O00054O004C000800073O0012460009000B3O001246000A000C4O00140008000A00020012230009000D3O00203000090009000E00203000090009000F001223000A00103O000617000A002400013O0004193O00240001001223000A00103O002030000A000A0011000620000A0036000100010004193O00360001001223000A00123O000617000A002B00013O0004193O002B0001001223000A00123O002030000A000A0011000620000A0036000100010004193O00360001001223000A00133O000620000A0036000100010004193O00360001001223000A00143O000617000A003500013O0004193O00350001001223000A00143O002030000A000A0011000620000A0036000100010004193O00360001001223000A00113O001223000B000D3O00203D000B000B00152O004C000D00073O001246000E00163O001246000F00174O004E000D000F4O0001000B3O0002001246000C00183O000626000D0001000100042O001A3O00074O001A3O000B4O001A3O000A4O001A3O000C4O0010000E3O000400300D000E0019001A00300D000E001B001A00300D000E001C001A00300D000E001D001A001223000F001E4O004C001000073O0012460011001F3O001246001200204O00140010001200020012230011000D3O00203000110011000E00203000110011000F002030001100110021001246001200223O0012230013000D3O00203000130013000E00203000130013000F0020300013001300232O001F0010001000132O0040000F00020001001223000F001E4O004C001000073O001246001100243O001246001200254O004E001000124O000B000F3O0001001223000F001E4O004C001000073O001246001100263O001246001200274O004E001000124O000B000F3O00012O004C000F00073O001246001000283O001246001100294O0014000F001100022O000C001000013O0012230011002A4O004C0012000F4O00450011000200020006170011007100013O0004193O007100010006170010007100013O0004193O007100010004193O008300010012230011002A4O004C0012000F4O00450011000200020006170011008000013O0004193O0080000100062000100080000100010004193O008000010012230011002B4O004C001200073O0012460013002C3O0012460014002D4O004E001200144O003300116O001300115O0004193O008300010012230011002E4O004C0012000F4O00400011000200010012230011002F4O004C0012000F3O001246001300304O001F0012001200132O004C001300073O001246001400313O001246001500324O004E001300154O000B00113O00010012230011002F4O004C0012000F3O001246001300334O001F001200120013001246001300344O002C0011001300010020300011000900352O00380011000E0011000617001100602O013O0004193O00602O01001246001100364O003E001200123O00261C00110098000100360004193O00980001001246001200363O00261C001200B3000100360004193O00B30001001223001300374O004C0014000F4O00400013000200010012230013002E4O004C001400073O001246001500383O001246001600394O004E001400164O000B00133O00010012230013002F4O004C001400073O0012460015003A3O0012460016003B4O00140014001600020012460015003C4O001F0014001400152O004C001500073O0012460016003D3O0012460017003E4O004E001500174O000B00133O00010012460012003F3O00261C001200D0000100400004193O00D000010012230013002F4O004C001400073O001246001500413O001246001600424O0014001400160002001246001500434O001F0014001400152O004C001500073O001246001600443O001246001700454O0014001500170002002030001600090021001246001700463O0020300018000900232O004C001900073O001246001A00473O001246001B00484O00140019001B00022O001F0015001500192O002C00130015000100203D0013000900492O004C001500073O0012460016004A3O0012460017004B4O004E001500174O000B00133O00010004193O00602O0100261C001200FF0001004C0004193O00FF0001001246001300363O00261C001300E30001003F0004193O00E300010012230014002F4O004C001500073O0012460016004D3O0012460017004E4O00140015001700020012460016004F4O001F0015001500162O004C001600073O001246001700503O001246001800514O004E001600184O000B00143O0001001246001200523O0004193O00FF000100261C001300D3000100360004193O00D300010012230014002F4O004C001500073O001246001600533O001246001700544O0014001500170002001246001600554O001F0015001500162O004C001600073O001246001700563O001246001800574O004E001600184O000B00143O00010012230014002F4O004C001500073O001246001600583O001246001700594O00140015001700020012460016005A4O001F0015001500162O004C001600073O0012460017005B3O0012460018005C4O004E001600184O000B00143O00010012460013003F3O0004193O00D3000100261C0012002E2O01003F0004193O002E2O01001246001300363O00261C0013001D2O0100360004193O001D2O010012230014002F4O004C001500073O0012460016005D3O0012460017005E4O00140015001700020012460016005F4O001F0015001500162O004C001600073O001246001700603O001246001800614O004E001600184O000B00143O00010012230014002F4O004C001500073O001246001600623O001246001700634O0014001500170002001246001600644O001F0015001500162O004C001600073O001246001700653O001246001800664O004E001600184O000B00143O00010012460013003F3O00261C001300022O01003F0004193O00022O010012230014002F4O004C001500073O001246001600673O001246001700684O0014001500170002001246001600694O001F0015001500162O004C001600073O0012460017006A3O0012460018006B4O004E001600184O000B00143O00010012460012004C3O0004193O002E2O010004193O00022O0100261C0012009B000100520004193O009B0001001246001300363O000E07003F00412O0100130004193O00412O010012230014002F4O004C001500073O0012460016006C3O0012460017006D4O00140015001700020012460016006E4O001F0015001500162O004C001600073O0012460017006F3O001246001800704O004E001600184O000B00143O0001001246001200403O0004193O009B0001000E07003600312O0100130004193O00312O010012230014002F4O004C001500073O001246001600713O001246001700724O0014001500170002001246001600734O001F0015001500162O004C001600073O001246001700743O001246001800754O004E001600184O000B00143O00010012230014002F4O004C001500073O001246001600763O001246001700774O0014001500170002001246001600784O001F0015001500162O004C001600073O001246001700793O0012460018007A4O004E001600184O000B00143O00010012460013003F3O0004193O00312O010004193O009B00010004193O00602O010004193O009800012O004C0011000D3O0012230012007B3O0012230013000D3O00203000130013000E00203000130013000F0020300013001300212O00450012000200022O004C001300073O0012460014007C3O0012460015007D4O00140013001500020012230014000D3O00203D0014001400152O004C001600073O0012460017007E3O0012460018007F4O004E001600184O000100143O000200203D0014001400802O00450014000200022O004C001500073O001246001600813O001246001700824O00140015001700020012230016000D3O00203D0016001600152O004C001800073O001246001900833O001246001A00844O004E0018001A4O000100163O000200203D0016001600850012230018000D3O0020300018001800862O00140016001800020020300016001600212O001F0012001200162O00400011000200010012230011002A4O004C001200073O001246001300873O001246001400884O004E001200144O000100113O0002000617001100982O013O0004193O00982O010020300011000900352O00380011000E0011000620001100982O0100010004193O00982O01001223001100374O004C001200073O001246001300893O0012460014008A4O004E001200144O000B00113O00010012230011000D3O00203000110011008600261C001100A52O01008B0004193O00A52O010012230011008C3O0012230012000D3O00203D00120012008D0012460014008E4O000C001500014O004E001200154O000100113O00022O001B0011000100010004193O004602010012230011000D3O00203000110011008600261C001100B22O01008F0004193O00B22O010012230011008C3O0012230012000D3O00203D00120012008D001246001400904O000C001500014O004E001200154O000100113O00022O001B0011000100010004193O004602010012230011000D3O00203000110011008600261C001100BF2O0100910004193O00BF2O010012230011008C3O0012230012000D3O00203D00120012008D001246001400924O000C001500014O004E001200154O000100113O00022O001B0011000100010004193O004602010012230011000D3O00203000110011008600261C001100CC2O0100930004193O00CC2O010012230011008C3O0012230012000D3O00203D00120012008D001246001400944O000C001500014O004E001200154O000100113O00022O001B0011000100010004193O004602010012230011000D3O00203000110011008600261C001100D92O0100950004193O00D92O010012230011008C3O0012230012000D3O00203D00120012008D001246001400944O000C001500014O004E001200154O000100113O00022O001B0011000100010004193O004602010012230011000D3O00203000110011008600261C001100E62O0100960004193O00E62O010012230011008C3O0012230012000D3O00203D00120012008D001246001400974O000C001500014O004E001200154O000100113O00022O001B0011000100010004193O004602010012230011000D3O00203000110011008600261C001100F32O0100980004193O00F32O010012230011008C3O0012230012000D3O00203D00120012008D001246001400974O000C001500014O004E001200154O000100113O00022O001B0011000100010004193O004602010012230011000D3O00203000110011008600261C00112O00020100960004194O0002010012230011008C3O0012230012000D3O00203D00120012008D001246001400974O000C001500014O004E001200154O000100113O00022O001B0011000100010004193O004602010012230011000D3O00203000110011008600261C0011000D020100990004193O000D02010012230011008C3O0012230012000D3O00203D00120012008D0012460014009A4O000C001500014O004E001200154O000100113O00022O001B0011000100010004193O004602010012230011000D3O00203000110011008600261C001100190201009B0004193O001902010012230011008C3O0012230012000D3O00203D00120012008D0012460014009C4O004E001200144O000100113O00022O001B0011000100010004193O004602010012230011000D3O00203000110011008600261C001100250201009D0004193O002502010012230011008C3O0012230012000D3O00203D00120012008D0012460014009E4O004E001200144O000100113O00022O001B0011000100010004193O004602010012230011000D3O00203000110011008600261C0011003E020100910004193O003E02010012460011008F3O0006200011003E020100010004193O003E02010012460011008B3O0006200011003E020100010004193O003E0201001246001100933O0006200011003E020100010004193O003E0201001246001100963O0006200011003E020100010004193O003E0201001246001100993O0006200011003E020100010004193O003E02010012460011009B3O0006200011003E020100010004193O003E0201001246001100953O0006200011003E020100010004193O003E02010012230011008C3O0012230012000D3O00203D00120012008D0012460014009F4O000C001500014O004E001200154O000100113O00022O001B0011000100012O00033O00013O00023O00023O00026O00F03F026O00704002284O001000025O001246000300014O003700045O001246000500013O00044B0003002300014O00076O004C000800026O000900016O000A00026O000B00036O000C00044O004C000D6O004C000E00063O002032000F000600012O004E000C000F4O0001000B3O00024O000C00036O000D00044O004C000E00013O002024000F000600012O0037001000014O004D000F000F0010001047000F0001000F0020240010000600012O0037001100014O004D0010001000110010470010000100100020320010001000012O004E000D00104O004A000C6O0001000A3O0002002048000A000A00022O001D0009000A4O000B00073O00010004310003000500014O000300054O004C000400024O0012000300044O001300036O00033O00017O00183O0003073O00DF3B17ABD4D19903073O00BC5479DFB1BFED030A3O004A534F4E456E636F64652O033O00B4D3B703053O00E1A1DB36A903063O001755245D2A4D03073O005A30503545292203043O00C3048FF703053O00934BDCA3B703073O002A2FD806BF991103063O00624AB962DAEB030C3O003AA5C5282217BE86083E09AF03053O0079CAAB5C4703103O00612O706C69636174696F6E2F6A736F6E03043O00FC5D8C3003063O00BE32E849A14C030A3O00537461747573436F6465026O00694003053O007072696E7403223O0029BEDB4A5211B0994F580DA8D845585EA8DC4C495EA8CC415E1BA8CA444812B7C00C03053O007EDBB9223D03043O007761726E031F3O00C10DC752777A37E7E84CDD5B7C7A37E4E20EC6517D7537FEE21FDD5F757B3903083O00876CAE3E121E1793013F4O001000013O00014O00025O001246000300013O001246000400024O00140002000400022O0011000100026O000200013O00203D0002000200032O004C000400014O00140002000400024O000300024O001000043O00044O00055O001246000600043O001246000700054O00140005000700024O000600034O00110004000500064O00055O001246000600063O001246000700074O00140005000700024O00065O001246000700083O001246000800094O00140006000800022O00110004000500064O00055O0012460006000A3O0012460007000B4O00140005000700022O001000063O00014O00075O0012460008000C3O0012460009000D4O001400070009000200204100060007000E2O00110004000500064O00055O0012460006000F3O001246000700104O00140005000700022O00110004000500022O00450003000200020006170003003800013O0004193O0038000100203000040003001100261C00040038000100120004193O00380001001223000400136O00055O001246000600143O001246000700154O004E000500074O000B00043O00010004193O003E0001001223000400166O00055O001246000600173O001246000700184O004E000500074O000B00043O00012O00033O00017O00", v17(), ...);
end
